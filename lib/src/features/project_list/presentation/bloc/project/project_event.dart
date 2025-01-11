part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.fetchProjectById(String id) = _FetchProjectById;
}
