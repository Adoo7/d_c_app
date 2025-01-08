import 'package:d_c_app/src/project_feature/domain/entities/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class ProjectModel extends ProjectEntity with _$ProjectModel {
  const factory ProjectModel({
    required String id,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}
