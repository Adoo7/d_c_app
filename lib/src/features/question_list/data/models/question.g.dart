// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: json['id'] as String,
      question: json['question'] as String,
      surveyId: NullableStringModel.fromJson(
          json['survey_id'] as Map<String, dynamic>),
      answerType: json['answer_type'] as String,
      answer:
          NullableStringModel.fromJson(json['answer'] as Map<String, dynamic>),
      required: json['required'] as bool,
      relatedQuestionId: NullableStringModel.fromJson(
          json['related_question_id'] as Map<String, dynamic>),
      answerListId: NullableStringModel.fromJson(
          json['answer_list_id'] as Map<String, dynamic>),
      orderNumber: json['order_number'] as String,
      tabNumber: json['tab_number'] as String,
      tabName: json['tab_name'] as String,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'survey_id': instance.surveyId,
      'answer_type': instance.answerType,
      'answer': instance.answer,
      'required': instance.required,
      'related_question_id': instance.relatedQuestionId,
      'answer_list_id': instance.answerListId,
      'order_number': instance.orderNumber,
      'tab_number': instance.tabNumber,
      'tab_name': instance.tabName,
    };
