part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.fetchSurveyById(String id) = _FetchSurveyById;
  const factory SurveyEvent.fetchAllSurveys() = _FetchAllSurveys;
  const factory SurveyEvent.fetchSurveyListByProjectId(String projectId) =
      _FetchSurveyListByProjectId;
}
