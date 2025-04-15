// To parse this JSON data, do
//
//     final answerListPaginatedResponse = answerListPaginatedResponseFromJson(jsonString);

import 'package:d_c_app/src/features/question_list/data/models/answer_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'answer_list_forsurvey_response.freezed.dart';
part 'answer_list_forsurvey_response.g.dart';

AnswerListsForSurveyResponse answerListsForSurveyResponseFromJson(String str) =>
    AnswerListsForSurveyResponse.fromJson(json.decode(str));

String answerListsForSurveyResponseToJson(AnswerListsForSurveyResponse data) =>
    json.encode(data.toJson());

@freezed
class AnswerListsForSurveyResponse with _$AnswerListsForSurveyResponse {
  const factory AnswerListsForSurveyResponse({
    @JsonKey(name: "answer_lists")
    required List<AnswerListReponse>? answerLists,
  }) = _AnswerListsForSurveyResponse;

  factory AnswerListsForSurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerListsForSurveyResponseFromJson(json);
}
