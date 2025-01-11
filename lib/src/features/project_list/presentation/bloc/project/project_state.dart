part of 'project_bloc.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = _Initial;
  const factory ProjectState.loading() = _Loading;
  const factory ProjectState.loaded(ProjectEntity project) = _Loaded;
  const factory ProjectState.failed(String error) = _Failed;
}
