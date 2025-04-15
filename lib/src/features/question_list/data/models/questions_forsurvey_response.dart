import 'package:freezed_annotation/freezed_annotation.dart';
import 'question.dart';

part 'questions_forsurvey_response.freezed.dart';
part 'questions_forsurvey_response.g.dart';

@freezed
class QuestionsForSurveyResponse with _$QuestionsForSurveyResponse {
  const factory QuestionsForSurveyResponse({
    @JsonKey(name: "questions") required List<QuestionModel>? questions,
  }) = _QuestionsForSurveyResponse;

  factory QuestionsForSurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionsForSurveyResponseFromJson(json);
}
