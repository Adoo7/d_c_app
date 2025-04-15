import 'package:bloc/bloc.dart';
import 'package:d_c_app/injection_container.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_cubit.freezed.dart';
part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit() : super(AnswerState.initial());

  void refresh() {
    emit(AnswerState.initial());
  }

  void filterAnswers(String questionId, Answer answer) {
    emit(AnswerState.filteringAnswers());
    // Add logic to filter other answers based on relatedAnswerId
    try {
      //deselect answers in same answer list

      // If this answer has a childAnswerId, update the child answer with this answer's id
      filterChildAnswers(questionId, answer);
      // Add logic to update parent answers based on childAnswerId
      // If this answer has a parentAnswerId, update the parent answer with this answer's id
      // filterParentAnswers(questionId, answer);
      // update state for answers with relatedAnswerId and filter with this answer's id
      fillRelatedAnswers(questionId, answer);
      emit(AnswerState.answerChanged());
    } catch (e) {
      sl<QuestionBloc>()
          .add(QuestionEvent.showSnackBar('Failed to filter answers $e'));
    }
  }

  void fillRelatedAnswers(String questionId, Answer answer) {
    // if answer.relatedAnswerId is not null
    if (answer.relatedAnswerIds != null &&
        answer.relatedAnswerIds!.isNotEmpty) {
      // find related questions
      List<QuestionEntity> relatedQuestions = findRelatedQuestions(answer);

      // for each related question, find the answer with relatedAnswerId
      for (var question in relatedQuestions) {
        if (question.answerListEntity != null) {
          for (var relatedAnswer in question.answerListEntity!.answers) {
            relatedAnswer.isVisible = true;
            if (answer.relatedAnswerIds != null &&
                answer.relatedAnswerIds!.contains(relatedAnswer.id)) {
              sl<QuestionBloc>().answers[questionId] = relatedAnswer.answerText;
              filterChildAnswers(question.id, relatedAnswer);
            } else {
              relatedAnswer.isVisible = false;
            }
          }
        }
      }
    }
  }

  void filterParentAnswers(String questionId, Answer answer) {
    List<QuestionEntity> parentQuestions = findParentQuestions(answer);

    if (answer.parentAnswerIds != null && answer.parentAnswerIds!.isNotEmpty) {
      for (var question in parentQuestions) {
        if (question.answerListEntity != null) {
          for (var parentAnswer in question.answerListEntity!.answers) {
            if (parentAnswer.childAnswerIds != null &&
                parentAnswer.childAnswerIds!.contains(answer.id)) {
              parentAnswer.isVisible = true;
            } else {
              parentAnswer.isVisible = false;
            }
          }
        }
      }
    }
  }

  void filterChildAnswers(String questionId, Answer answer) {
    List<QuestionEntity> childQuestions = findChildQuestions(answer);

    if (answer.childAnswerIds != null && answer.childAnswerIds!.isNotEmpty) {
      for (var question in childQuestions) {
        if (question.answerListEntity != null) {
          for (var childAnswer in question.answerListEntity!.answers) {
            childAnswer.isVisible = true;
            if (childAnswer.parentAnswerIds != null &&
                childAnswer.parentAnswerIds!.contains(answer.id)) {
              filterAnswers(question.id, childAnswer);
            } else {
              childAnswer.isVisible = false;
            }
          }
        }
      }
    }
  }
}

List<QuestionEntity> findParentQuestions(Answer answer) {
  List<QuestionEntity> parentQuestions = sl<QuestionBloc>()
      .questions
      .where((question) =>
          question.answerListEntity != null &&
          question.answerListEntity!.answers.any((parentAnswer) =>
              parentAnswer.childAnswerIds != null &&
              parentAnswer.childAnswerIds!.contains(answer.id)))
      .toList();

  return parentQuestions;
}

List<QuestionEntity> findChildQuestions(Answer answer) {
  List<QuestionEntity> childQuestions = sl<QuestionBloc>()
      .questions
      .where((question) =>
          question.answerListEntity != null &&
          question.answerListEntity!.answers.any((childAnswer) =>
              childAnswer.parentAnswerIds != null &&
              childAnswer.parentAnswerIds!.contains(answer.id)))
      .toList();

  return childQuestions;
}

List<QuestionEntity> findRelatedQuestions(Answer answer) {
  List<QuestionEntity> relatedQuestions = sl<QuestionBloc>()
      .questions
      .where((question) =>
          question.answerListEntity != null &&
          question.answerListEntity!.answers.any((relatedAnswer) =>
              answer.relatedAnswerIds != null &&
              answer.relatedAnswerIds!.contains(relatedAnswer.id)))
      .toList();

  return relatedQuestions;
}
