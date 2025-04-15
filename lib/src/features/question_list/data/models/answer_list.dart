// To parse this JSON data, do
//
//     final answerListPaginatedResponse = answerListPaginatedResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_list.freezed.dart';
part 'answer_list.g.dart';

@freezed
class AnswerListReponse with _$AnswerListReponse {
  const factory AnswerListReponse({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "question_id") required String questionId,
    @JsonKey(name: "answer_list_name") required String answerListName,
    @JsonKey(name: "answers") required List<AnswerResponse> answers,
  }) = _AnswerListReponse;

  factory AnswerListReponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerListReponseFromJson(json);
}

@freezed
class AnswerResponse with _$AnswerResponse {
  const factory AnswerResponse({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "answer_text") required String answerText,
    @JsonKey(name: "answer_list_id") required String answerListId,
    @JsonKey(name: "related_answer_id")
    required NullableString relatedAnswerIds,
    @JsonKey(name: "parent_answer_ids") required NullableString parentAnswerIds,
    @JsonKey(name: "child_answer_ids") required NullableString childAnswerIds,
  }) = _Answer;

  factory AnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerResponseFromJson(json);
}

@freezed
class NullableString with _$NullableString {
  const factory NullableString({
    @JsonKey(name: "String") required String string,
    @JsonKey(name: "Valid") required bool valid,
  }) = _NullableString;

  factory NullableString.fromJson(Map<String, dynamic> json) =>
      _$NullableStringFromJson(json);
}
