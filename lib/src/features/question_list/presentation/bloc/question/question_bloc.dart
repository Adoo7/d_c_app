import 'dart:convert';
import 'dart:io';

import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/internet_services/dio_exceptions.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/create_question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/get_question_list_by_survey_id.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

part 'question_bloc.freezed.dart';
part 'question_event.dart';
part 'question_state.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final GetQuestionListBySurveyIDUseCase _getQuestionListBySurveyIdUseCase;
  final CreateResponseUseCase _createResponseUseCase;
  final Map<String, String> answers = {};
  final List<QuestionEntity> questions = [];

  QuestionBloc(
      this._getQuestionListBySurveyIdUseCase, this._createResponseUseCase)
      : super(const QuestionState.initial()) {
    on<QuestionEvent>((event, emit) async {
      await event.map(
        fetchQuestionById: (e) async {},
        fetchAllQuestions: (e) async {},
        loadAnswersFromBloc: (e) async {
          emit(QuestionState.initial());
          try {
            Directory? _downloadsDirectory =
                await getApplicationDocumentsDirectory();
            final file = File(
                '${_downloadsDirectory.path}/dca/survey_responses/${e.surveyId}.txt');

            if (await file.exists()) {
              final fileContent = await file.readAsString();
              final Map<String, String> savedAnswers =
                  Map<String, String>.from(jsonDecode(fileContent));
              answers.addAll(savedAnswers);
            }

            emit(QuestionState.loadSuccess(questions, true));
          } catch (e) {
            emit(
                QuestionState.loadFailure("Failed to load answers from file."));
          }
        },
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
            questions.clear();
            questions.addAll(dataState.data!);
            emit(QuestionState.loadSuccess(dataState.data!, false));
          }
        },
        answerQuestion: (e) async {
          // save answer to local variable "answers"
          answers.addAll(e.answer);
          try {
            Directory? _downloadsDirectory =
                await getApplicationDocumentsDirectory();

            final file = File(
                '${_downloadsDirectory.path}/dca/survey_responses/${e.surveyId}.txt');
            await file.create(recursive: true, exclusive: false);
            await file.writeAsString(jsonEncode(answers));
            emit(QuestionState.answerSaved());
          } catch (e) {
            emit(QuestionState.answerSavedError());
          }
          // save answer to local storage
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
        showSnackBar: (e) async {
          emit(QuestionState.snackBarShowing(e.message));
        },
        clearAnswers: (e) async {
          answers.clear();
          try {
            Directory? _downloadsDirectory =
                await getApplicationDocumentsDirectory();
            final file = File(
                '${_downloadsDirectory.path}/dca/survey_responses/${e.surveyId}.txt');
            await file.create(recursive: true, exclusive: false);
            await file.writeAsString(jsonEncode(answers), flush: true);
            emit(QuestionState.snackBarShowing('Answers cleared!'));
          } catch (e) {
            emit(QuestionState.answerSavedError());
          }
        },
      );
    });
  }
}
