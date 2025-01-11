// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectsPaginatedResponseImpl _$$ProjectsPaginatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectsPaginatedResponseImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      pageCount: (json['page_count'] as num).toInt(),
      totalCount: (json['total_count'] as num).toInt(),
      projects: (json['items'] as List<dynamic>?)
          ?.map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProjectsPaginatedResponseImplToJson(
        _$ProjectsPaginatedResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'page_count': instance.pageCount,
      'total_count': instance.totalCount,
      'items': instance.projects,
    };
