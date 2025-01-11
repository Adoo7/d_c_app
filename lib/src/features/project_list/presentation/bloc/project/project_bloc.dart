import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.dart';
part 'project_event.dart';
part 'project_bloc.freezed.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  ProjectBloc() : super(const ProjectState.initial()) {
    on<ProjectEvent>((event, emit) async {
      await event.map(
        fetchProjectById: (e) async {
          emit(const ProjectState.loading());
          try {
            Future.delayed(const Duration(seconds: 2));
            // final project = await _getProjectByIdUseCase(e.projectId);
            final project = ProjectEntity(
              id: 'abc123',
              name: 'Project Name',
              description: 'Project Description',
            );
            emit(ProjectState.loaded(project));
          } catch (e) {
            emit(ProjectState.failed("Error: ${e.toString()}"));
          }
        },
      );
    });
  }
}
