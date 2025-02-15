import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/features/survey_list/data/data_sources/remote/survey_api_service.dart';
import 'package:d_c_app/src/features/survey_list/data/models/survey.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';
import 'package:d_c_app/src/features/survey_list/domain/repo/survey_repository.dart';
import 'package:dio/dio.dart';

class SurveyRepositoryImpl implements SurveyRepository {
  final SurveyApiService _surveyApiService;

  SurveyRepositoryImpl(this._surveyApiService);

  @override
  Future<DataState<List<SurveyEntity>>> getAllSurveys() async {
    try {
      final httpResponse = await _surveyApiService.getAllSurveys();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(
            httpResponse.data.surveys?.map((s) => s.toEntity()).toList() ?? []);
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

  @override
  Future<DataState<List<SurveyEntity>>> getSurveyListByProjectId(
      String id) async {
    try {
      final httpResponse = await _surveyApiService.getAllSurveys();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data.surveys
                ?.where((s) => s.projectId == id)
                .map((s) => s.toEntity())
                .toList() ??
            []);
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

extension SurveyModelMapper on SurveyModel {
  SurveyEntity toEntity() {
    return SurveyEntity(
      id: id,
      name: name,
    );
  }
}
