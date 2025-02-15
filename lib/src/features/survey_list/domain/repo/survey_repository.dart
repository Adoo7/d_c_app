import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/features/survey_list/domain/entities/survey.dart';

abstract class SurveyRepository {
  Future<DataState<List<SurveyEntity>>> getAllSurveys();
  Future<DataState<List<SurveyEntity>>> getSurveyListByProjectId(String id);
  // Future<void> addProject(Project project);
  // Future<void> updateProject(Project project);
  // Future<void> deleteProject(String id);
}
