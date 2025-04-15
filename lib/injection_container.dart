import 'package:d_c_app/src/core/shared/constants.dart';
import 'package:d_c_app/src/features/project_list/data/data_sources/remote/project_api_service.dart';
import 'package:d_c_app/src/features/project_list/data/repo/project_repository_impl.dart';
import 'package:d_c_app/src/features/project_list/domain/repo/project_repository.dart';
import 'package:d_c_app/src/features/project_list/domain/use_case/get_projects.dart';
import 'package:d_c_app/src/features/project_list/presentation/bloc/project_list/project_list_bloc.dart';
import 'package:d_c_app/src/features/question_list/data/data_sources/remote/question_api_service.dart';
import 'package:d_c_app/src/features/question_list/data/repo/question_repository_impl.dart';
import 'package:d_c_app/src/features/question_list/domain/repo/question_repository.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/create_question_response.dart';
import 'package:d_c_app/src/features/question_list/domain/use_case/get_question_list_by_survey_id.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/cubit/answer_cubit.dart';
import 'package:d_c_app/src/features/question_list/presentation/bloc/question/question_bloc.dart';
import 'package:d_c_app/src/features/survey_list/data/data_sources/remote/survey_api_service.dart';
import 'package:d_c_app/src/features/survey_list/data/repo/survey_repository_impl.dart';
import 'package:d_c_app/src/features/survey_list/domain/repo/survey_repository.dart';
import 'package:d_c_app/src/features/survey_list/domain/use_case/get_survey_list_by_project_id.dart';
import 'package:d_c_app/src/features/survey_list/presentation/bloc/survey/survey_bloc.dart';
import 'package:d_c_app/src/settings/settings_controller.dart';
import 'package:d_c_app/src/settings/settings_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.allowReassignment = true;

  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.apiBaseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      responseType: ResponseType.json,
      contentType: 'application/json', // Added contentType here
      headers: {
        'Content-Type': 'application/json',
        'Authorization': "Bearer ${AppConstants.jwtToken}",
      },
    ),
  );

  dio.interceptors.add(
    LogInterceptor(responseHeader: true, responseBody: true, request: true),
  );

  // Core Services
  sl.registerSingleton<Dio>(dio);

  // Settings Service
  sl.registerSingleton<SettingsService>(SettingsService());

  // Settings Controller
  sl.registerSingleton<SettingsController>(SettingsController(sl()));

  // Project Feature: network
  sl.registerSingleton<ProjectApiService>(ProjectApiService(sl()));

  // Project Feature: repository
  sl.registerSingleton<ProjectRepository>(ProjectRepositoryImpl(sl()));

  // Project Feature: use cases
  sl.registerSingleton<GetProjectsUseCase>(GetProjectsUseCase(sl()));

  // Project Feature: blocs
  sl.registerFactory<ProjectListBloc>(() => ProjectListBloc(sl()));

  // Survey Feature: network
  sl.registerSingleton<SurveyApiService>(SurveyApiService(sl()));

  // Survey Feature: repository
  sl.registerSingleton<SurveyRepository>(SurveyRepositoryImpl(sl()));

  // Get Survey List By Project ID Use Case
  sl.registerSingleton<GetSurveyListByProjectIDUseCase>(
      GetSurveyListByProjectIDUseCase(sl()));

  // Survey Feature: blocs
  sl.registerFactory<SurveyBloc>(() => SurveyBloc(sl()));

  // Question Feature: network
  sl.registerSingleton<QuestionApiService>(QuestionApiService(sl()));

  // Question Feature: repository
  sl.registerSingleton<QuestionRepository>(QuestionRepositoryImpl(sl()));

  // Question Feature: use cases
  sl.registerSingleton<GetQuestionListBySurveyIDUseCase>(
      GetQuestionListBySurveyIDUseCase(sl()));

  sl.registerSingleton<CreateResponseUseCase>(CreateResponseUseCase(sl()));

  // Question Feature: blocs
  sl.registerSingleton<QuestionBloc>(QuestionBloc(sl(), sl()));

  sl.registerSingleton<AnswerCubit>(AnswerCubit());
}
