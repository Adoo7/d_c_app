import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/project_feature/data/data_sources/remote/project_api_service.dart';
import 'package:d_c_app/src/project_feature/data/models/project.dart';
import 'package:d_c_app/src/project_feature/domain/repo/project_repository.dart';
import 'package:dio/dio.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final ProjectApiService _projectApiService;

  ProjectRepositoryImpl(this._projectApiService);

  @override
  Future<DataState<ProjectModel>> getProjectById(String id) async {
    // This is just a placeholder implementation
    return DataSuccess(
      ProjectModel(
        id: id,
        name: 'name',
        description: 'description',
        startDate: DateTime(2021, 1, 1),
        endDate: DateTime(2021, 1, 1),
      ),
    );
  }

  @override
  Future<DataState<List<ProjectModel>>> getAllProjects() async {
    try {
      final httpResponse = await _projectApiService.getAllProjects();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: httpResponse.response.requestOptions,
            response: httpResponse.response,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(
        DioException(
          requestOptions: e.requestOptions,
          response: e.response,
        ),
      );
    }
  }
  // @override
  // Future<List<ProjectModel>> getAllProjects() async {
  //   // TODO: Implement the method to fetch all projects
  //   // This is just a placeholder implementation
  //   return [
  //     ProjectModel(id: '1', name: 'Project 1'),
  //     ProjectModel(id: '2', name: 'Project 2'),
  //   ];
  // }

  // @override
  // Future<void> addProject(ProjectModel project) async {
  //   // TODO: Implement the method to add a new project
  //   // This is just a placeholder implementation
  // }

  // @override
  // Future<void> updateProject(ProjectModel project) async {
  //   // TODO: Implement the method to update an existing project
  //   // This is just a placeholder implementation
  // }

  // @override
  // Future<void> deleteProject(String id) async {
  //   // TODO: Implement the method to delete a project by id
  //   // This is just a placeholder implementation
  // }
}
