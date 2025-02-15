// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurveyImpl _$$SurveyImplFromJson(Map<String, dynamic> json) => _$SurveyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      projectId: json['project_id'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$SurveyImplToJson(_$SurveyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'project_id': instance.projectId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
