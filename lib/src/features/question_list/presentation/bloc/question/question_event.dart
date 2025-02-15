part of 'question_bloc.dart';

@freezed
class QuestionEvent with _$QuestionEvent {
  const factory QuestionEvent.fetchQuestionById(String id) = _FetchQuestionById;
  const factory QuestionEvent.fetchAllQuestions() = _FetchAllQuestions;
  const factory QuestionEvent.fetchQuestionListBySurveyId(String surveyId) =
      _FetchQuestionListByProjectId;
  const factory QuestionEvent.submitAnswers() = _SubmitAnswers;
  const factory QuestionEvent.answerQuestion(Map<String, String> answer) =
      _AnswerQuestion;
}
