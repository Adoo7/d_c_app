import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/internet_services/dio_exceptions.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/create_question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/get_question_list_by_survey_id.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GetQuestionListBySurveyIDUseCase _getQuestionListBySurveyIdUseCase;
  final CreateResponseUseCase _createResponseUseCase;
  final Map<String, String> answers = {};

  QuestionBloc(
      this._getQuestionListBySurveyIdUseCase, this._createResponseUseCase)
      : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) async {
      await event.map(
        fetchQuestionById: (e) async {},
        fetchAllQuestions: (e) async {},
        fetchQuestionListBySurveyId: (e) async {
          emit(const QuestionState.loadInProgress());
          final dataState =
              await _getQuestionListBySurveyIdUseCase(params: e.surveyId);
          if (dataState is DataFailed) {
            emit(
              QuestionState.loadFailure(
                CustomException.fromError(dataState.error!).errorMessage,
              ),
            );
          }

          if (dataState is DataSuccess) {
            emit(QuestionState.loadSuccess(dataState.data!));
          }
        },
        answerQuestion: (e) async {
          // save answer to local variable "answers"
          answers.addAll(e.answer);
        },
        submitAnswers: (e) async {
          emit(const QuestionState.answerSubmittedInProgress());
          final dataState = await _createResponseUseCase(
              params: QuestionResponseParams(
            answers.entries
                .map((e) => QuestionResponseEntity(
                      questionID: e.key,
                      answer: e.value,
                    ))
                .toList(),
          ));

          if (dataState is DataFailed) {
            emit(
              QuestionState.answerSubmittedFailure(
                CustomException.fromError(dataState.error!).errorMessage,
              ),
            );
          }

          if (dataState is DataSuccess) {
            emit(QuestionState.answerSubmittedSuccess());
          }
        },
      );
    });
  }
}
