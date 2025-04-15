part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;
  const factory QuestionState.loadInProgress() = _LoadInProgress;
  const factory QuestionState.loadSuccess(
      List<QuestionEntity> questions, bool loadAnswers) = _LoadSuccess;
  const factory QuestionState.loadFailure(String error) = _LoadFailure;
  const factory QuestionState.answerChanged() = _AnswerChanged;
  const factory QuestionState.answerSavedError() = _AnswerSavedError;
  const factory QuestionState.answerSaved() = _AnswerSave;
  const factory QuestionState.answerSubmittedSuccess() =
      _AnswerSubmittedSuccess;
  const factory QuestionState.answerSubmittedFailure(String error) =
      _AnswerSubmittedFailure;
  const factory QuestionState.answerSubmittedInProgress() =
      _AnswerSubmittedInProgress;
  const factory QuestionState.snackBarShowing(String message) =
      _SnackBarShowing;
  const factory QuestionState.validationErrors(
      List<String> missingQuestionIds) = _ValidationErrors;
}
