import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/internet_services/dio_exceptions.dart';
import 'package:d_c_app/src/project_feature/domain/entities/project.dart';
import 'package:d_c_app/src/project_feature/domain/use_case/get_projects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_bloc.freezed.dart';
part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  final GetProjectsUseCase _getProjectsUseCase;

  ProjectBloc(this._getProjectsUseCase) : super(const ProjectState.initial()) {
    on<ProjectEvent>((event, emit) async {
      await event.map(
        started: (e) {
          emit(const ProjectState.loading());
        },
        fetchProjects: (e) async {
          emit(const ProjectState.loading());
          try {
            final dataState = await _getProjectsUseCase();
            if (dataState is DataFailed) {
              emit(
                ProjectState.failed(
                  CustomException.fromError(dataState.error!).errorMessage,
                ),
              );
            }

            if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
              emit(ProjectState.loaded(dataState.data!));
            }
          } catch (e) {
            emit(ProjectState.failed("Error: ${e.toString()}"));
          }
        },
      );
    });
  }
}
