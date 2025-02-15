import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';
import 'package:d_c_app/src/features/survey_list/domain/repo/survey_repository.dart';

class GetSurveyListByProjectIDUseCase
    extends UseCase<DataState<List<SurveyEntity>>, String> {
  final SurveyRepository _surveyRepository;

  GetSurveyListByProjectIDUseCase(this._surveyRepository);

  @override
  Future<DataState<List<SurveyEntity>>> call({String params = "noid"}) async {
    return _surveyRepository.getSurveyListByProjectId(params);
  }
}
