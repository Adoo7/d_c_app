import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_response_request.freezed.dart';
part 'question_response_request.g.dart';

@freezed
class QuestionResponseRequestModel with _$QuestionResponseRequestModel {
  const factory QuestionResponseRequestModel({
    @JsonKey(name: "questionResponses")
    required List<Map<String, String>> questionResponses,
  }) = _QuestionResponseRequest;

  factory QuestionResponseRequestModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseRequestModelFromJson(json);
}
