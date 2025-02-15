import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question_response.dart';

abstract class QuestionRepository {
  Future<DataState<List<QuestionEntity>>> getAllQuestions();
  Future<DataState<List<QuestionEntity>>> getQuestionListBySurveyId(String id);
  Future<DataState<List<QuestionResponseEntity>>> postMultipleQuestionResponse(
      List<QuestionResponseEntity> questionResponses);
  // Future<void> addProject(Project project);
  // Future<void> updateProject(Project project);
  // Future<void> deleteProject(String id);
}
