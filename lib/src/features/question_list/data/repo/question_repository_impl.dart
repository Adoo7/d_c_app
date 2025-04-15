import 'dart:convert';

import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/features/question_list/data/data_sources/remote/question_api_service.dart';
import 'package:d_c_app/src/features/question_list/data/models/answer_list.dart';
import 'package:d_c_app/src/features/question_list/data/models/question.dart';
import 'package:d_c_app/src/features/question_list/data/models/question_response.dart';
import 'package:d_c_app/src/features/question_list/data/models/question_response_request.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/repo/question_repository.dart';
import 'package:dio/dio.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionApiService _questionApiService;

  QuestionRepositoryImpl(this._questionApiService);

  @override
  Future<DataState<List<QuestionEntity>>> getQuestionListBySurveyId(
      String id) async {
    // This is just a placeholder implementation
    try {
      final httpResponse =
          await _questionApiService.getQuestionListBySurveyId(id);
      final answerListResponse =
          await _questionApiService.getAnswerListsBySurveyId(id);

      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data.questions
                ?.where((q) => q.surveyId.valid && (q.surveyId.value == id))
                .map((q) {
              if (answerListResponse.data.answerLists != null &&
                  answerListResponse.data.answerLists!
                      .where((al) => al.questionId == q.id)
                      .isNotEmpty) {
                return q.toEntity((answerListResponse.data.answerLists
                    ?.firstWhere((al) => al.questionId == q.id)
                    .toEntity()));
              }
              return q.toEntity(null);
            }).toList() ??
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

  @override
  Future<DataState<List<QuestionEntity>>> getAllQuestions() async {
    //never call this, it will return all questions from the server and crash the app
    try {
      final httpResponse = await _questionApiService.getAllQuestions();
      final answerListResponse = await _questionApiService.getAllAnswerLists();
      if (httpResponse.response.statusCode == 200) {
        return DataSuccess(httpResponse.data.questions
                ?.map((s) => s.toEntity(
                      answerListResponse.data.answerLists
                          ?.firstWhere((element) =>
                              element.questionId == s.answerListId.value)
                          .toEntity(),
                    ))
                .toList() ??
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

  @override
  Future<DataState<List<QuestionResponseEntity>>> postMultipleQuestionResponse(
      List<QuestionResponseEntity> questionResponses) async {
    try {
      final httpResponse = await _questionApiService
          .postMultipleQuestionResponse(questionResponses.fromList());

      if (httpResponse.response.statusCode == 201) {
        return DataSuccess(httpResponse.data.toEntity());
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

extension QuestionModelMapper on QuestionModel {
  QuestionEntity toEntity(AnswerListEntity? answerListEntity) {
    return QuestionEntity(
      id: id,
      question: question,
      answer: answer.valid ? answer.value : null,
      answerType: answerType,
      required: required,
      relatedQuestionId:
          relatedQuestionId.valid ? relatedQuestionId.value : null,
      answerListId: answerListId.valid ? answerListId.value : null,
      surveyId: surveyId.valid ? surveyId.value : null,
      answerListEntity: answerListEntity,
      orderNumber: orderNumber,
      tabNumber: tabNumber,
      tabName: tabName,
    );
  }
}

extension AnswerModelMapper on AnswerListReponse {
  AnswerListEntity toEntity() {
    return AnswerListEntity(
      id: id,
      answers: answers.toEntity(),
      questionId: questionId,
    );
  }
}

extension AnswerMapper on List<AnswerResponse> {
  List<Answer> toEntity() {
    return map((e) => Answer(
          id: e.id,
          answerText: e.answerText,
          answerListId: e.answerListId,
          relatedAnswerIds: e.relatedAnswerIds.valid
              ? (jsonDecode(e.relatedAnswerIds.string) as List<dynamic>)
                  .map((id) => id.toString())
                  .toList()
              : null,
          parentAnswerIds: e.parentAnswerIds.valid
              ? (jsonDecode(e.parentAnswerIds.string) as List<dynamic>)
                  .map((id) => id.toString())
                  .toList()
              : null,
          childAnswerIds: e.childAnswerIds.valid
              ? (jsonDecode(e.childAnswerIds.string) as List<dynamic>)
                  .map((id) => id.toString())
                  .toList()
              : null,
        )).toList();
  }
}

extension QuestionResponseRequestModelExtension
    on List<QuestionResponseEntity> {
  QuestionResponseRequestModel fromList() {
    return QuestionResponseRequestModel(
      questionResponses:
          map((e) => {'answer': e.answer, 'questionID': e.questionID}).toList(),
    );
  }
}

extension QuestionResponseModelMapper on List<QuestionResponseModel> {
  List<QuestionResponseEntity> toEntity() {
    return map((e) => QuestionResponseEntity(
          answer: e.answer,
          questionID: e.questionID,
        )).toList();
  }
}
