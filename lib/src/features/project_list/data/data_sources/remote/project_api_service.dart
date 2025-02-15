import 'package:d_c_app/src/features/project_list/data/models/project.dart';
import 'package:d_c_app/src/features/project_list/data/models/projects_paginated_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "project_api_service.g.dart";

@RestApi()
abstract class ProjectApiService {
  factory ProjectApiService(Dio dio) = _ProjectApiService;
  @GET('/v1/projects')
  Future<HttpResponse<ProjectsPaginatedResponse>> getAllProjects();

  @GET('/v1/projects')
  Future<HttpResponse<ProjectModel>> getProjectById({
    @Query('id') required String id,
  });
}
