// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsPaginatedResponseImpl _$$QuestionsPaginatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionsPaginatedResponseImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      pageCount: (json['page_count'] as num).toInt(),
      totalCount: (json['total_count'] as num).toInt(),
      questions: (json['items'] as List<dynamic>?)
          ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionsPaginatedResponseImplToJson(
        _$QuestionsPaginatedResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'page_count': instance.pageCount,
      'total_count': instance.totalCount,
      'items': instance.questions,
    };
