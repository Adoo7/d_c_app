part of 'answer_cubit.dart';

@freezed
class AnswerState with _$AnswerState {
  const factory AnswerState.initial() = _Initial;
  const factory AnswerState.answerChanged() = _AnswerChanged;
  const factory AnswerState.filteringAnswers() = _FilteringAnswers;
}
