import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/internet_services/dio_exceptions.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';
import 'package:d_c_app/src/features/survey_list/domain/use_case/get_survey_list_by_project_id.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_bloc.freezed.dart';
part 'survey_event.dart';
part 'survey_state.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  final GetSurveyListByProjectIDUseCase _getSurveyListByProjectIdUseCase;

  SurveyBloc(this._getSurveyListByProjectIdUseCase)
      : super(const SurveyState.initial()) {
    on<SurveyEvent>((event, emit) async {
      await event.map(
        fetchSurveyById: (e) async {},
        fetchAllSurveys: (e) async {},
        fetchSurveyListByProjectId: (e) async {
          emit(const SurveyState.loadInProgress());
          final dataState =
              await _getSurveyListByProjectIdUseCase(params: e.projectId);
          if (dataState is DataFailed) {
            emit(
              SurveyState.loadFailure(
                CustomException.fromError(dataState.error!).errorMessage,
              ),
            );
          }

          if (dataState is DataSuccess) {
            emit(SurveyState.loadSuccess(dataState.data!));
          }
        },
      );
    });
  }
}
