part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.fetchQuestionById(String id) = _FetchQuestionById;
  const factory QuestionEvent.fetchAllQuestions() = _FetchAllQuestions;
  const factory QuestionEvent.fetchQuestionListBySurveyId(String surveyId) =
      _FetchQuestionListByProjectId;
  const factory QuestionEvent.submitAnswers() = _SubmitAnswers;
  const factory QuestionEvent.answerQuestion(
      {required Map<String, String> answer,
      required String surveyId}) = _AnswerQuestion;
  const factory QuestionEvent.loadAnswersFromBloc(String surveyId) =
      _LoadAnswersFromBloc;
  const factory QuestionEvent.showSnackBar(String message) = _ShowSnackBar;
  const factory QuestionEvent.clearAnswers(String surveyId) = _ClearAnswers;
  const factory QuestionEvent.validateRequiredQuestions() =
      _ValidateRequiredQuestions;
}
