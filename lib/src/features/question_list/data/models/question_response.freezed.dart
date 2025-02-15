// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionResponseModel _$QuestionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionResponseModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "questionID")
  String get questionID => throw _privateConstructorUsedError;

  /// Serializes this QuestionResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionResponseModelCopyWith<QuestionResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionResponseModelCopyWith<$Res> {
  factory $QuestionResponseModelCopyWith(QuestionResponseModel value,
          $Res Function(QuestionResponseModel) then) =
      _$QuestionResponseModelCopyWithImpl<$Res, QuestionResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "answer") String answer,
      @JsonKey(name: "questionID") String questionID});
}

/// @nodoc
class _$QuestionResponseModelCopyWithImpl<$Res,
        $Val extends QuestionResponseModel>
    implements $QuestionResponseModelCopyWith<$Res> {
  _$QuestionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
    Object? questionID = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      questionID: null == questionID
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionResponseImplCopyWith<$Res>
    implements $QuestionResponseModelCopyWith<$Res> {
  factory _$$QuestionResponseImplCopyWith(_$QuestionResponseImpl value,
          $Res Function(_$QuestionResponseImpl) then) =
      __$$QuestionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "answer") String answer,
      @JsonKey(name: "questionID") String questionID});
}

/// @nodoc
class __$$QuestionResponseImplCopyWithImpl<$Res>
    extends _$QuestionResponseModelCopyWithImpl<$Res, _$QuestionResponseImpl>
    implements _$$QuestionResponseImplCopyWith<$Res> {
  __$$QuestionResponseImplCopyWithImpl(_$QuestionResponseImpl _value,
      $Res Function(_$QuestionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
    Object? questionID = null,
  }) {
    return _then(_$QuestionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      questionID: null == questionID
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionResponseImpl implements _QuestionResponse {
  const _$QuestionResponseImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "answer") required this.answer,
      @JsonKey(name: "questionID") required this.questionID});

  factory _$QuestionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionResponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "answer")
  final String answer;
  @override
  @JsonKey(name: "questionID")
  final String questionID;

  @override
  String toString() {
    return 'QuestionResponseModel(id: $id, answer: $answer, questionID: $questionID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.questionID, questionID) ||
                other.questionID == questionID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, answer, questionID);

  /// Create a copy of QuestionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      __$$QuestionResponseImplCopyWithImpl<_$QuestionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionResponse implements QuestionResponseModel {
  const factory _QuestionResponse(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "answer") required final String answer,
          @JsonKey(name: "questionID") required final String questionID}) =
      _$QuestionResponseImpl;

  factory _QuestionResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionResponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "answer")
  String get answer;
  @override
  @JsonKey(name: "questionID")
  String get questionID;

  /// Create a copy of QuestionResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionResponseImplCopyWith<_$QuestionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
