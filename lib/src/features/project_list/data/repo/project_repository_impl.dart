import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/shared/enums.dart';
import 'package:d_c_app/src/features/project_list/data/data_sources/remote/project_api_service.dart';
import 'package:d_c_app/src/features/project_list/data/models/project.dart';
import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:d_c_app/src/features/project_list/domain/repo/project_repository.dart';
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
          creationDate: DateTime(2021, 1, 1),
          lastUpdate: DateTime(2021, 1, 1),
          makerId: 'makerId',
          type: ProjectViewType.review),
    );
  }

  @override
  Future<DataState<List<ProjectEntity>>> getAllProjects() async {
    try {
      final httpResponse = await _projectApiService.getAllProjects();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(
            httpResponse.data.projects?.map((p) => p.toEntity()).toList() ??
                []);
        // return DataSuccess([]);
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
}

extension ProjectModelMapper on ProjectModel {
  ProjectEntity toEntity() {
    return ProjectEntity(
        id: id, name: name, description: description, type: type);
  }
}
