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
    @JsonKey(name: "answers") required List<Answer> answers,
  }) = _AnswerListReponse;

  factory AnswerListReponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerListReponseFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "answer_text") required String answerText,
    @JsonKey(name: "answer_list_id") required String answerListId,
    @JsonKey(name: "related_answer_id")
    required RelatedAnswerId relatedAnswerId,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

@freezed
class RelatedAnswerId with _$RelatedAnswerId {
  const factory RelatedAnswerId({
    @JsonKey(name: "String") required String string,
    @JsonKey(name: "Valid") required bool valid,
  }) = _RelatedAnswerId;

  factory RelatedAnswerId.fromJson(Map<String, dynamic> json) =>
      _$RelatedAnswerIdFromJson(json);
}
