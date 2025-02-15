// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionResponseRequestImpl _$$QuestionResponseRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseRequestImpl(
      questionResponses: (json['questionResponses'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
    );

Map<String, dynamic> _$$QuestionResponseRequestImplToJson(
        _$QuestionResponseRequestImpl instance) =>
    <String, dynamic>{
      'questionResponses': instance.questionResponses,
    };
