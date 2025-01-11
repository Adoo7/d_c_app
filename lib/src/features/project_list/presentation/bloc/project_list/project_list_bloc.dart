import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/internet_services/dio_exceptions.dart';
import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:d_c_app/src/features/project_list/domain/use_case/get_projects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_list_bloc.freezed.dart';
part 'project_list_event.dart';
part 'project_list_state.dart';

class ProjectListBloc extends Bloc<ProjectListEvent, ProjectListState> {
  final GetProjectsUseCase _getProjectsUseCase;

  ProjectListBloc(this._getProjectsUseCase)
      : super(const ProjectListState.initial()) {
    on<ProjectListEvent>((event, emit) async {
      await event.map(
        started: (e) {
          emit(const ProjectListState.loading());
        },
        fetchProjects: (e) async {
          emit(const ProjectListState.loading());
          try {
            final dataState = await _getProjectsUseCase();
            if (dataState is DataFailed) {
              emit(
                ProjectListState.failed(
                  CustomException.fromError(dataState.error!).errorMessage,
                ),
              );
            }

            if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
              emit(ProjectListState.loaded(dataState.data!));
            }
          } catch (e) {
            emit(ProjectListState.failed("Error: ${e.toString()}"));
          }
        },
      );
    });
  }
}
