part of 'project_bloc.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _Initial;
  const factory ProjectState.loading() = _Loading;
  const factory ProjectState.loaded(List<ProjectEntity> projects) = _Loaded;
  const factory ProjectState.failed(String error) = _Failed;
}
