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
  final String orderNumber;
  final String tabNumber;
  final String tabName;

  const QuestionEntity(
      {required this.id,
      required this.question,
      required this.answer,
      required this.surveyId,
      required this.answerType,
      required this.required,
      required this.relatedQuestionId,
      required this.answerListId,
      required this.answerListEntity,
      required this.orderNumber,
      required this.tabNumber,
      required this.tabName});
}

class AnswerListEntity {
  final String id;
  final List<Answer> answers;
  final String questionId;

  const AnswerListEntity({
    required this.id,
    required this.answers,
    required this.questionId,
  });
}

class Answer {
  final String id;
  final String answerText;
  final String answerListId;
  final List<String>? relatedAnswerIds;
  final List<String>? parentAnswerIds;
  final List<String>? childAnswerIds;
  bool isVisible = true;
  bool isSelected = false;

  Answer({
    required this.id,
    required this.answerText,
    required this.answerListId,
    required this.relatedAnswerIds,
    required this.parentAnswerIds,
    required this.childAnswerIds,
  });
}
