import 'package:d_c_app/src/project_feature/data/models/project.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "project_api_service.g.dart";

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ProjectApiService {
  factory ProjectApiService(Dio dio) = _ProjectApiService;
  @GET('/todos')
  Future<HttpResponse<List<ProjectModel>>> getAllProjects();

  @GET('/projects')
  Future<HttpResponse<ProjectModel>> getProjectById({
    @Query('id') required String id,
  });
}
