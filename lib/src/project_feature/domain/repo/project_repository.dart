import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/project_feature/domain/entities/project.dart';

abstract class ProjectRepository {
  Future<DataState<List<ProjectEntity>>> getAllProjects();
  Future<DataState<ProjectEntity>> getProjectById(String id);
  // Future<void> addProject(Project project);
  // Future<void> updateProject(Project project);
  // Future<void> deleteProject(String id);
}
