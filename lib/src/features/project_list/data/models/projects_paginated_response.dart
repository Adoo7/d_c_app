import 'package:d_c_app/src/features/project_list/data/models/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_paginated_response.g.dart';
part 'projects_paginated_response.freezed.dart';

@freezed
class ProjectsPaginatedResponse with _$ProjectsPaginatedResponse {
  const factory ProjectsPaginatedResponse({
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "page_count") required int pageCount,
    @JsonKey(name: "total_count") required int totalCount,
    @JsonKey(name: "items") required List<ProjectModel>? projects,
  }) = _ProjectsPaginatedResponse;

  factory ProjectsPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectsPaginatedResponseFromJson(json);
}
