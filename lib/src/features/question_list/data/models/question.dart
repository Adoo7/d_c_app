import 'package:d_c_app/src/core/shared/common_models/nullable_string.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "question") required String question,
    @JsonKey(name: "survey_id") required NullableStringModel surveyId,
    @JsonKey(name: "answer_type") required String answerType,
    @JsonKey(name: "answer") required NullableStringModel answer,
    @JsonKey(name: "required") required bool required,
    @JsonKey(name: "related_question_id")
    required NullableStringModel relatedQuestionId,
    @JsonKey(name: "answer_list_id") required NullableStringModel answerListId,
    @JsonKey(name: "order_number") required String orderNumber,
    @JsonKey(name: "tab_number") required String tabNumber,
    @JsonKey(name: "tab_name") required String tabName,
  }) = _Question;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
