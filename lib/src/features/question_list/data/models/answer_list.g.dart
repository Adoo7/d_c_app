// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerListReponseImpl _$$AnswerListReponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerListReponseImpl(
      id: json['id'] as String,
      questionId: json['question_id'] as String,
      answerListName: json['answer_list_name'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnswerListReponseImplToJson(
        _$AnswerListReponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_id': instance.questionId,
      'answer_list_name': instance.answerListName,
      'answers': instance.answers,
    };

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: json['id'] as String,
      answerText: json['answer_text'] as String,
      answerListId: json['answer_list_id'] as String,
      relatedAnswerIds: NullableString.fromJson(
          json['related_answer_id'] as Map<String, dynamic>),
      parentAnswerIds: NullableString.fromJson(
          json['parent_answer_ids'] as Map<String, dynamic>),
      childAnswerIds: NullableString.fromJson(
          json['child_answer_ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer_text': instance.answerText,
      'answer_list_id': instance.answerListId,
      'related_answer_id': instance.relatedAnswerIds,
      'parent_answer_ids': instance.parentAnswerIds,
      'child_answer_ids': instance.childAnswerIds,
    };

_$NullableStringImpl _$$NullableStringImplFromJson(Map<String, dynamic> json) =>
    _$NullableStringImpl(
      string: json['String'] as String,
      valid: json['Valid'] as bool,
    );

Map<String, dynamic> _$$NullableStringImplToJson(
        _$NullableStringImpl instance) =>
    <String, dynamic>{
      'String': instance.string,
      'Valid': instance.valid,
    };
