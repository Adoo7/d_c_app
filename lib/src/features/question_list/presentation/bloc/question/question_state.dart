part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;
  const factory QuestionState.loadInProgress() = _LoadInProgress;
  const factory QuestionState.loadSuccess(List<QuestionEntity> questions) =
      _LoadSuccess;
  const factory QuestionState.loadFailure(String error) = _LoadFailure;
  const factory QuestionState.answerChanged() = _AnswerChanged;

  const factory QuestionState.answerSubmittedSuccess() =
      _AnswerSubmittedSuccess;
  const factory QuestionState.answerSubmittedFailure(String error) =
      _AnswerSubmittedFailure;
  const factory QuestionState.answerSubmittedInProgress() =
      _AnswerSubmittedInProgress;
}
