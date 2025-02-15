// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_list_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerListPaginatedResponseImpl _$$AnswerListPaginatedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerListPaginatedResponseImpl(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      pageCount: (json['page_count'] as num).toInt(),
      totalCount: (json['total_count'] as num).toInt(),
      answerLists: (json['items'] as List<dynamic>?)
          ?.map((e) => AnswerListReponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnswerListPaginatedResponseImplToJson(
        _$AnswerListPaginatedResponseImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'page_count': instance.pageCount,
      'total_count': instance.totalCount,
      'items': instance.answerLists,
    };
