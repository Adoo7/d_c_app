// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_list_forsurvey_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerListsForSurveyResponseImpl _$$AnswerListsForSurveyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerListsForSurveyResponseImpl(
      answerLists: (json['answer_lists'] as List<dynamic>?)
          ?.map((e) => AnswerListReponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnswerListsForSurveyResponseImplToJson(
        _$AnswerListsForSurveyResponseImpl instance) =>
    <String, dynamic>{
      'answer_lists': instance.answerLists,
    };
