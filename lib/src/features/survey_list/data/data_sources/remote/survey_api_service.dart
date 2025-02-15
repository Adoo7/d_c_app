import 'package:d_c_app/src/core/shared/constants.dart';
import 'package:d_c_app/src/features/survey_list/data/models/surveys_paginated_response.dart';
import 'package:d_c_app/src/features/survey_list/data/models/survey.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "survey_api_service.g.dart";

@RestApi(baseUrl: AppConstants.apiBaseUrl)
abstract class SurveyApiService {
  factory SurveyApiService(Dio dio) = _SurveyApiService;

  @GET('/v1/surveys')
  Future<HttpResponse<SurveysPaginatedResponse>> getAllSurveys();

  @GET('/v1/surveys/{id}')
  Future<HttpResponse<SurveyModel>> getSurveyById(@Path('id') String id);
}
