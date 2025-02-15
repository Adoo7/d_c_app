part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState.initial() = _Initial;
  const factory SurveyState.loadInProgress() = _LoadInProgress;
  const factory SurveyState.loadSuccess(List<SurveyEntity> surveys) =
      _LoadSuccess;
  const factory SurveyState.loadFailure(String error) = _LoadFailure;
}
