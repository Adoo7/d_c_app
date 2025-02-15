import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question.dart';
import 'package:d_c_app/src/features/question_list/domain/repo/question_repository.dart';

class GetSurveysUseCase
    implements UseCase<void, DataState<List<QuestionEntity>>> {
  final QuestionRepository _questionRepository;

  GetSurveysUseCase(this._questionRepository);

  @override
  Future<DataState<List<QuestionEntity>>> call({void params}) async {
    return _questionRepository.getAllQuestions();
  }
}
