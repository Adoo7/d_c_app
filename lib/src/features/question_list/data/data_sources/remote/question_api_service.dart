import 'package:d_c_app/src/core/shared/constants.dart';
import 'package:d_c_app/src/features/question_list/data/models/answer_list_paginated_response.dart';
import 'package:d_c_app/src/features/question_list/data/models/question.dart';
import 'package:d_c_app/src/features/question_list/data/models/question_response.dart';
import 'package:d_c_app/src/features/question_list/data/models/question_response_request.dart';
import 'package:d_c_app/src/features/question_list/data/models/questions_paginated_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part "question_api_service.g.dart";

@RestApi(baseUrl: AppConstants.apiBaseUrl)
abstract class QuestionApiService {
  factory QuestionApiService(Dio dio) = _QuestionApiService;

  @GET('/v1/questions')
  Future<HttpResponse<QuestionsPaginatedResponse>> getAllQuestions();

  @GET('/v1/answer-lists')
  Future<HttpResponse<AnswerListPaginatedResponse>> getAllAnswerLists();

  @GET('/v1/questions/{id}')
  Future<HttpResponse<QuestionModel>> getQuestionListBySurveyId(
      @Path('id') String id);

  @POST('/v1/question-response/multiple')
  Future<HttpResponse<List<QuestionResponseModel>>>
      postMultipleQuestionResponse(@Body() QuestionResponseRequestModel body);
}
