import 'package:freezed_annotation/freezed_annotation.dart';
import 'question.dart';

part 'questions_paginated_response.freezed.dart';
part 'questions_paginated_response.g.dart';

@freezed
class QuestionsPaginatedResponse with _$QuestionsPaginatedResponse {
  const factory QuestionsPaginatedResponse({
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "page_count") required int pageCount,
    @JsonKey(name: "total_count") required int totalCount,
    @JsonKey(name: "items") required List<QuestionModel>? questions,
  }) = _QuestionsPaginatedResponse;

  factory QuestionsPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionsPaginatedResponseFromJson(json);
}
