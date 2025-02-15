// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surveys_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveysPaginatedResponseImpl _$$SurveysPaginatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SurveysPaginatedResponseImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      pageCount: (json['page_count'] as num).toInt(),
      totalCount: (json['total_count'] as num).toInt(),
      surveys: (json['items'] as List<dynamic>?)
          ?.map((e) => SurveyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurveysPaginatedResponseImplToJson(
        _$SurveysPaginatedResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'page_count': instance.pageCount,
      'total_count': instance.totalCount,
      'items': instance.surveys,
    };
