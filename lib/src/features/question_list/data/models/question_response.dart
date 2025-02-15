import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_response.freezed.dart';
part 'question_response.g.dart';

@freezed
class QuestionResponseModel with _$QuestionResponseModel {
  const factory QuestionResponseModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "answer") required String answer,
    @JsonKey(name: "questionID") required String questionID,
  }) = _QuestionResponse;

  factory QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseModelFromJson(json);
}
