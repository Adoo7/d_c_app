import 'package:d_c_app/src/core/internet_services/data_state.dart';
import 'package:d_c_app/src/core/usecase/usecase.dart';
import 'package:d_c_app/src/project_feature/domain/entities/project.dart';
import 'package:d_c_app/src/project_feature/domain/repo/project_repository.dart';

class GetProjectsUseCase
    implements UseCase<void, DataState<List<ProjectEntity>>> {
  final ProjectRepository _projectRepository;

  GetProjectsUseCase(this._projectRepository);

  @override
  Future<DataState<List<ProjectEntity>>> call({void params}) async {
    return _projectRepository.getAllProjects();
  }
}
