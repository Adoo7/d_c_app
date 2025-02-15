import 'package:freezed_annotation/freezed_annotation.dart';
import 'survey.dart';

part 'surveys_paginated_response.freezed.dart';
part 'surveys_paginated_response.g.dart';

@freezed
class SurveysPaginatedResponse with _$SurveysPaginatedResponse {
  const factory SurveysPaginatedResponse({
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "page_count") required int pageCount,
    @JsonKey(name: "total_count") required int totalCount,
    @JsonKey(name: "items") required List<SurveyModel>? surveys,
  }) = _SurveysPaginatedResponse;

  factory SurveysPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveysPaginatedResponseFromJson(json);
}
