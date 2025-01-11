import 'package:d_c_app/src/features/project_list/domain/entities/project.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class ProjectModel extends ProjectEntity with _$ProjectModel {
  const factory ProjectModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "maker_id") required String makerId,
    @JsonKey(name: "creation_date") required DateTime creationDate,
    @JsonKey(name: "last_update") required DateTime lastUpdate,
  }) = _ProjectModel;

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);
}
