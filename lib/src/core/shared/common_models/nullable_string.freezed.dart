// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nullable_string.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NullableStringModel _$NullableStringModelFromJson(Map<String, dynamic> json) {
  return _NullableStringModel.fromJson(json);
}

/// @nodoc
mixin _$NullableStringModel {
  @JsonKey(name: "String")
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: "Valid")
  bool get valid => throw _privateConstructorUsedError;

  /// Serializes this NullableStringModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NullableStringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NullableStringModelCopyWith<NullableStringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NullableStringModelCopyWith<$Res> {
  factory $NullableStringModelCopyWith(
          NullableStringModel value, $Res Function(NullableStringModel) then) =
      _$NullableStringModelCopyWithImpl<$Res, NullableStringModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "String") String value,
      @JsonKey(name: "Valid") bool valid});
}

/// @nodoc
class _$NullableStringModelCopyWithImpl<$Res, $Val extends NullableStringModel>
    implements $NullableStringModelCopyWith<$Res> {
  _$NullableStringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NullableStringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NullableStringModelImplCopyWith<$Res>
    implements $NullableStringModelCopyWith<$Res> {
  factory _$$NullableStringModelImplCopyWith(_$NullableStringModelImpl value,
          $Res Function(_$NullableStringModelImpl) then) =
      __$$NullableStringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "String") String value,
      @JsonKey(name: "Valid") bool valid});
}

/// @nodoc
class __$$NullableStringModelImplCopyWithImpl<$Res>
    extends _$NullableStringModelCopyWithImpl<$Res, _$NullableStringModelImpl>
    implements _$$NullableStringModelImplCopyWith<$Res> {
  __$$NullableStringModelImplCopyWithImpl(_$NullableStringModelImpl _value,
      $Res Function(_$NullableStringModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NullableStringModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? valid = null,
  }) {
    return _then(_$NullableStringModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NullableStringModelImpl implements _NullableStringModel {
  const _$NullableStringModelImpl(
      {@JsonKey(name: "String") required this.value,
      @JsonKey(name: "Valid") required this.valid});

  factory _$NullableStringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NullableStringModelImplFromJson(json);

  @override
  @JsonKey(name: "String")
  final String value;
  @override
  @JsonKey(name: "Valid")
  final bool valid;

  @override
  String toString() {
    return 'NullableStringModel(value: $value, valid: $valid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NullableStringModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, valid);

  /// Create a copy of NullableStringModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NullableStringModelImplCopyWith<_$NullableStringModelImpl> get copyWith =>
      __$$NullableStringModelImplCopyWithImpl<_$NullableStringModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NullableStringModelImplToJson(
      this,
    );
  }
}

abstract class _NullableStringModel implements NullableStringModel {
  const factory _NullableStringModel(
          {@JsonKey(name: "String") required final String value,
          @JsonKey(name: "Valid") required final bool valid}) =
      _$NullableStringModelImpl;

  factory _NullableStringModel.fromJson(Map<String, dynamic> json) =
      _$NullableStringModelImpl.fromJson;

  @override
  @JsonKey(name: "String")
  String get value;
  @override
  @JsonKey(name: "Valid")
  bool get valid;

  /// Create a copy of NullableStringModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NullableStringModelImplCopyWith<_$NullableStringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
