import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/repo/question_repository.dart';

class GetQuestionListBySurveyIDUseCase
    extends UseCase<DataState<List<QuestionEntity>>, String> {
  final QuestionRepository _questionRepository;

  GetQuestionListBySurveyIDUseCase(this._questionRepository);

  @override
  Future<DataState<List<QuestionEntity>>> call({String params = "noid"}) async {
    return _questionRepository.getQuestionListBySurveyId(params);
  }
}
