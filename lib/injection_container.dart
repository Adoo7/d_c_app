import 'package:d_c_app/src/project_feature/data/data_sources/remote/project_api_service.dart';
import 'package:d_c_app/src/project_feature/data/repo/project_repository_impl.dart';
import 'package:d_c_app/src/project_feature/domain/repo/project_repository.dart';
import 'package:d_c_app/src/project_feature/domain/use_case/get_projects.dart';
import 'package:d_c_app/src/project_feature/presentation/bloc/project/project_bloc.dart';
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

  // Project Feature: network
  sl.registerSingleton<ProjectApiService>(ProjectApiService(sl()));

  // Project Feature: repository
  sl.registerSingleton<ProjectRepository>(ProjectRepositoryImpl(sl()));

  // Project Feature: use cases
  sl.registerSingleton<GetProjectsUseCase>(GetProjectsUseCase(sl()));

  // Project Feature: blocs
  sl.registerFactory<ProjectBloc>(() => ProjectBloc(sl()));
}
