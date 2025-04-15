// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_forsurvey_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionsForSurveyResponseImpl _$$QuestionsForSurveyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionsForSurveyResponseImpl(
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionsForSurveyResponseImplToJson(
        _$QuestionsForSurveyResponseImpl instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
