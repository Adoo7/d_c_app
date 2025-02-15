import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/features/question_list/domain/entities/question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/repo/question_repository.dart';

class CreateResponseUseCase
    implements
        UseCase<DataState<List<QuestionResponseEntity>>,
            QuestionResponseParams> {
  final QuestionRepository _questionRepository;

  CreateResponseUseCase(this._questionRepository);

  @override
  Future<DataState<List<QuestionResponseEntity>>> call(
      {QuestionResponseParams params =
          const QuestionResponseParams([])}) async {
    return _questionRepository
        .postMultipleQuestionResponse(params.questionResponses);
  }
}

class QuestionResponseParams {
  final List<QuestionResponseEntity> questionResponses;

  const QuestionResponseParams(this.questionResponses);
}
