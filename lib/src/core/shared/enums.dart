// ignore_for_file: constant_identifier_names

enum ProjectViewType {
  quality_assurance,
  review,
  data_collection,
}

extension ProjectViewTypeExtension on ProjectViewType {
  static ProjectViewType fromString(String value) {
    switch (value) {
      case 'quality_assurance':
        return ProjectViewType.quality_assurance;
      case 'review':
        return ProjectViewType.review;
      case 'data_collection':
        return ProjectViewType.data_collection;
      default:
        throw ArgumentError('Unknown ProjectViewType: $value');
    }
  }
}

enum QuestionTypeEnum {
  short_text,
  long_text,
  radio_select,
  dropdown_select,
  multiple_select,
  image,
  bool,
  date,
  number
}

extension QuestionTypeExtension on QuestionTypeEnum {
  static QuestionTypeEnum fromString(String value) {
    switch (value) {
      case 'short_text':
        return QuestionTypeEnum.short_text;
      case 'long_text':
        return QuestionTypeEnum.long_text;
      case 'radio_select':
        return QuestionTypeEnum.radio_select;
      case 'dropdown_select':
        return QuestionTypeEnum.dropdown_select;
      case 'multiple_select':
        return QuestionTypeEnum.multiple_select;
      case 'image':
        return QuestionTypeEnum.image;
      case 'bool':
        return QuestionTypeEnum.bool;
      case 'date':
        return QuestionTypeEnum.date;
      case 'number':
        return QuestionTypeEnum.number;
      default:
        throw ArgumentError('Unknown QuestionType: $value');
    }
  }
}
