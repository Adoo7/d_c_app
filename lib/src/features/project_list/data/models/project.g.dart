// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$ProjectViewTypeEnumMap, json['project_type']),
      makerId: json['maker_id'] as String,
      creationDate: DateTime.parse(json['creation_date'] as String),
      lastUpdate: DateTime.parse(json['last_update'] as String),
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'project_type': _$ProjectViewTypeEnumMap[instance.type]!,
      'maker_id': instance.makerId,
      'creation_date': instance.creationDate.toIso8601String(),
      'last_update': instance.lastUpdate.toIso8601String(),
    };

const _$ProjectViewTypeEnumMap = {
  ProjectViewType.quality_assurance: 'quality_assurance',
  ProjectViewType.review: 'review',
  ProjectViewType.data_collection: 'data_collection',
};
