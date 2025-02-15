// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionResponseRequestModel _$QuestionResponseRequestModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionResponseRequest.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseRequestModel {
  @JsonKey(name: "questionResponses")
  List<Map<String, String>> get questionResponses =>
      throw _privateConstructorUsedError;

  /// Serializes this QuestionResponseRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionResponseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionResponseRequestModelCopyWith<QuestionResponseRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseRequestModelCopyWith<$Res> {
  factory $QuestionResponseRequestModelCopyWith(
          QuestionResponseRequestModel value,
          $Res Function(QuestionResponseRequestModel) then) =
      _$QuestionResponseRequestModelCopyWithImpl<$Res,
          QuestionResponseRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "questionResponses")
      List<Map<String, String>> questionResponses});
}

/// @nodoc
class _$QuestionResponseRequestModelCopyWithImpl<$Res,
        $Val extends QuestionResponseRequestModel>
    implements $QuestionResponseRequestModelCopyWith<$Res> {
  _$QuestionResponseRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionResponseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionResponses = null,
  }) {
    return _then(_value.copyWith(
      questionResponses: null == questionResponses
          ? _value.questionResponses
          : questionResponses // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionResponseRequestImplCopyWith<$Res>
    implements $QuestionResponseRequestModelCopyWith<$Res> {
  factory _$$QuestionResponseRequestImplCopyWith(
          _$QuestionResponseRequestImpl value,
          $Res Function(_$QuestionResponseRequestImpl) then) =
      __$$QuestionResponseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "questionResponses")
      List<Map<String, String>> questionResponses});
}

/// @nodoc
class __$$QuestionResponseRequestImplCopyWithImpl<$Res>
    extends _$QuestionResponseRequestModelCopyWithImpl<$Res,
        _$QuestionResponseRequestImpl>
    implements _$$QuestionResponseRequestImplCopyWith<$Res> {
  __$$QuestionResponseRequestImplCopyWithImpl(
      _$QuestionResponseRequestImpl _value,
      $Res Function(_$QuestionResponseRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionResponseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionResponses = null,
  }) {
    return _then(_$QuestionResponseRequestImpl(
      questionResponses: null == questionResponses
          ? _value._questionResponses
          : questionResponses // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseRequestImpl implements _QuestionResponseRequest {
  const _$QuestionResponseRequestImpl(
      {@JsonKey(name: "questionResponses")
      required final List<Map<String, String>> questionResponses})
      : _questionResponses = questionResponses;

  factory _$QuestionResponseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseRequestImplFromJson(json);

  final List<Map<String, String>> _questionResponses;
  @override
  @JsonKey(name: "questionResponses")
  List<Map<String, String>> get questionResponses {
    if (_questionResponses is EqualUnmodifiableListView)
      return _questionResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionResponses);
  }

  @override
  String toString() {
    return 'QuestionResponseRequestModel(questionResponses: $questionResponses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._questionResponses, _questionResponses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionResponses));

  /// Create a copy of QuestionResponseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseRequestImplCopyWith<_$QuestionResponseRequestImpl>
      get copyWith => __$$QuestionResponseRequestImplCopyWithImpl<
          _$QuestionResponseRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseRequestImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponseRequest
    implements QuestionResponseRequestModel {
  const factory _QuestionResponseRequest(
          {@JsonKey(name: "questionResponses")
          required final List<Map<String, String>> questionResponses}) =
      _$QuestionResponseRequestImpl;

  factory _QuestionResponseRequest.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseRequestImpl.fromJson;

  @override
  @JsonKey(name: "questionResponses")
  List<Map<String, String>> get questionResponses;

  /// Create a copy of QuestionResponseRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionResponseRequestImplCopyWith<_$QuestionResponseRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
