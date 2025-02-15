import 'package:d_c_app/src/core/shared/enums.dart';

class ProjectEntity {
  final String id;
  final String name;
  final String description;
  final ProjectViewType type;

  const ProjectEntity(
      {required this.id,
      required this.name,
      required this.description,
      required this.type});
}
