import 'package:freezed_annotation/freezed_annotation.dart';

part 'nullable_string.freezed.dart';
part 'nullable_string.g.dart';

@freezed
class NullableStringModel with _$NullableStringModel {
  const factory NullableStringModel({
    @JsonKey(name: "String") required String value,
    @JsonKey(name: "Valid") required bool valid,
  }) = _NullableStringModel;
  factory NullableStringModel.fromJson(Map<String, dynamic> json) =>
      _$NullableStringModelFromJson(json);
}
