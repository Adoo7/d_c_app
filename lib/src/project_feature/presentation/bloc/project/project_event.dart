part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.started() = _Started;
  const factory ProjectEvent.fetchProjects() = _FetchProjects;
}