import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';
import 'package:d_c_app/src/features/survey_list/domain/repo/survey_repository.dart';

class GetSurveysUseCase
    implements UseCase<void, DataState<List<SurveyEntity>>> {
  final SurveyRepository _surveyRepository;

  GetSurveysUseCase(this._surveyRepository);

  @override
  Future<DataState<List<SurveyEntity>>> call({void params}) async {
    return _surveyRepository.getAllSurveys();
  }
}
