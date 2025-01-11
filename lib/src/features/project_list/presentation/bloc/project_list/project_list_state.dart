part of 'project_list_bloc.dart';

@freezed
class ProjectListState with _$ProjectListState {
  const factory ProjectListState.initial() = _Initial;
  const factory ProjectListState.loading() = _Loading;
  const factory ProjectListState.loaded(List<ProjectEntity> projects) = _Loaded;
  const factory ProjectListState.failed(String error) = _Failed;
}
