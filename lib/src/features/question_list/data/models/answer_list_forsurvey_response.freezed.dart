// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_list_forsurvey_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerListsForSurveyResponse _$AnswerListsForSurveyResponseFromJson(
    Map<String, dynamic> json) {
  return _AnswerListsForSurveyResponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerListsForSurveyResponse {
  @JsonKey(name: "answer_lists")
  List<AnswerListReponse>? get answerLists =>
      throw _privateConstructorUsedError;

  /// Serializes this AnswerListsForSurveyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerListsForSurveyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerListsForSurveyResponseCopyWith<AnswerListsForSurveyResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerListsForSurveyResponseCopyWith<$Res> {
  factory $AnswerListsForSurveyResponseCopyWith(
          AnswerListsForSurveyResponse value,
          $Res Function(AnswerListsForSurveyResponse) then) =
      _$AnswerListsForSurveyResponseCopyWithImpl<$Res,
          AnswerListsForSurveyResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "answer_lists") List<AnswerListReponse>? answerLists});
}

/// @nodoc
class _$AnswerListsForSurveyResponseCopyWithImpl<$Res,
        $Val extends AnswerListsForSurveyResponse>
    implements $AnswerListsForSurveyResponseCopyWith<$Res> {
  _$AnswerListsForSurveyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerListsForSurveyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerLists = freezed,
  }) {
    return _then(_value.copyWith(
      answerLists: freezed == answerLists
          ? _value.answerLists
          : answerLists // ignore: cast_nullable_to_non_nullable
              as List<AnswerListReponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerListsForSurveyResponseImplCopyWith<$Res>
    implements $AnswerListsForSurveyResponseCopyWith<$Res> {
  factory _$$AnswerListsForSurveyResponseImplCopyWith(
          _$AnswerListsForSurveyResponseImpl value,
          $Res Function(_$AnswerListsForSurveyResponseImpl) then) =
      __$$AnswerListsForSurveyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "answer_lists") List<AnswerListReponse>? answerLists});
}

/// @nodoc
class __$$AnswerListsForSurveyResponseImplCopyWithImpl<$Res>
    extends _$AnswerListsForSurveyResponseCopyWithImpl<$Res,
        _$AnswerListsForSurveyResponseImpl>
    implements _$$AnswerListsForSurveyResponseImplCopyWith<$Res> {
  __$$AnswerListsForSurveyResponseImplCopyWithImpl(
      _$AnswerListsForSurveyResponseImpl _value,
      $Res Function(_$AnswerListsForSurveyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerListsForSurveyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerLists = freezed,
  }) {
    return _then(_$AnswerListsForSurveyResponseImpl(
      answerLists: freezed == answerLists
          ? _value._answerLists
          : answerLists // ignore: cast_nullable_to_non_nullable
              as List<AnswerListReponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerListsForSurveyResponseImpl
    implements _AnswerListsForSurveyResponse {
  const _$AnswerListsForSurveyResponseImpl(
      {@JsonKey(name: "answer_lists")
      required final List<AnswerListReponse>? answerLists})
      : _answerLists = answerLists;

  factory _$AnswerListsForSurveyResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnswerListsForSurveyResponseImplFromJson(json);

  final List<AnswerListReponse>? _answerLists;
  @override
  @JsonKey(name: "answer_lists")
  List<AnswerListReponse>? get answerLists {
    final value = _answerLists;
    if (value == null) return null;
    if (_answerLists is EqualUnmodifiableListView) return _answerLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnswerListsForSurveyResponse(answerLists: $answerLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerListsForSurveyResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._answerLists, _answerLists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_answerLists));

  /// Create a copy of AnswerListsForSurveyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerListsForSurveyResponseImplCopyWith<
          _$AnswerListsForSurveyResponseImpl>
      get copyWith => __$$AnswerListsForSurveyResponseImplCopyWithImpl<
          _$AnswerListsForSurveyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerListsForSurveyResponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerListsForSurveyResponse
    implements AnswerListsForSurveyResponse {
  const factory _AnswerListsForSurveyResponse(
          {@JsonKey(name: "answer_lists")
          required final List<AnswerListReponse>? answerLists}) =
      _$AnswerListsForSurveyResponseImpl;

  factory _AnswerListsForSurveyResponse.fromJson(Map<String, dynamic> json) =
      _$AnswerListsForSurveyResponseImpl.fromJson;

  @override
  @JsonKey(name: "answer_lists")
  List<AnswerListReponse>? get answerLists;

  /// Create a copy of AnswerListsForSurveyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerListsForSurveyResponseImplCopyWith<
          _$AnswerListsForSurveyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
