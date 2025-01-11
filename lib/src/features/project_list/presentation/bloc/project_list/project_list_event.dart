part of 'project_list_bloc.dart';

@freezed
class ProjectListEvent with _$ProjectListEvent {
  const factory ProjectListEvent.started() = _Started;
  const factory ProjectListEvent.fetchProjects() = _FetchProjects;
}
