class QuestionEntity {
  final String id;
  final String question;
  final String? answer;
  final String? surveyId;
  final String answerType;
  final bool required;
  final String? relatedQuestionId;
  final String? answerListId;
  final AnswerListEntity? answerListEntity;

  const QuestionEntity({
    required this.id,
    required this.question,
    required this.answer,
    required this.surveyId,
    required this.answerType,
    required this.required,
    required this.relatedQuestionId,
    required this.answerListId,
    required this.answerListEntity,
  });
}

class AnswerListEntity {
  final String id;
  final List<String> answers;
  final String questionId;

  const AnswerListEntity({
    required this.id,
    required this.answers,
    required this.questionId,
  });
}
