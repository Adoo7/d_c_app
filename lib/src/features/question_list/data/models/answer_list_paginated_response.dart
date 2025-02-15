// To parse this JSON data, do
//
//     final answerListPaginatedResponse = answerListPaginatedResponseFromJson(jsonString);

import 'package:d_c_app/src/features/question_list/data/models/answer_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'answer_list_paginated_response.freezed.dart';
part 'answer_list_paginated_response.g.dart';

AnswerListPaginatedResponse answerListPaginatedResponseFromJson(String str) =>
    AnswerListPaginatedResponse.fromJson(json.decode(str));

String answerListPaginatedResponseToJson(AnswerListPaginatedResponse data) =>
    json.encode(data.toJson());

@freezed
class AnswerListPaginatedResponse with _$AnswerListPaginatedResponse {
  const factory AnswerListPaginatedResponse({
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "per_page") required int perPage,
    @JsonKey(name: "page_count") required int pageCount,
    @JsonKey(name: "total_count") required int totalCount,
    @JsonKey(name: "items") required List<AnswerListReponse>? answerLists,
  }) = _AnswerListPaginatedResponse;

  factory AnswerListPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$AnswerListPaginatedResponseFromJson(json);
}
