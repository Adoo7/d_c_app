import 'package:d_c_app/src/features/project_list/data/data_sources/remote/project_api_service.dart';
import 'package:d_c_app/src/features/project_list/data/repo/project_repository_impl.dart';
import 'package:d_c_app/src/features/project_list/domain/repo/project_repository.dart';
import 'package:d_c_app/src/features/project_list/domain/use_case/get_projects.dart';
import 'package:d_c_app/src/features/project_list/presentation/bloc/project_list/project_list_bloc.dart';
import 'package:d_c_app/src/settings/settings_controller.dart';
import 'package:d_c_app/src/settings/settings_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();

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
}
