// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerListReponse _$AnswerListReponseFromJson(Map<String, dynamic> json) {
  return _AnswerListReponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerListReponse {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "question_id")
  String get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_list_name")
  String get answerListName => throw _privateConstructorUsedError;
  @JsonKey(name: "answers")
  List<Answer> get answers => throw _privateConstructorUsedError;

  /// Serializes this AnswerListReponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerListReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerListReponseCopyWith<AnswerListReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerListReponseCopyWith<$Res> {
  factory $AnswerListReponseCopyWith(
          AnswerListReponse value, $Res Function(AnswerListReponse) then) =
      _$AnswerListReponseCopyWithImpl<$Res, AnswerListReponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "question_id") String questionId,
      @JsonKey(name: "answer_list_name") String answerListName,
      @JsonKey(name: "answers") List<Answer> answers});
}

/// @nodoc
class _$AnswerListReponseCopyWithImpl<$Res, $Val extends AnswerListReponse>
    implements $AnswerListReponseCopyWith<$Res> {
  _$AnswerListReponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerListReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? answerListName = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerListName: null == answerListName
          ? _value.answerListName
          : answerListName // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerListReponseImplCopyWith<$Res>
    implements $AnswerListReponseCopyWith<$Res> {
  factory _$$AnswerListReponseImplCopyWith(_$AnswerListReponseImpl value,
          $Res Function(_$AnswerListReponseImpl) then) =
      __$$AnswerListReponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "question_id") String questionId,
      @JsonKey(name: "answer_list_name") String answerListName,
      @JsonKey(name: "answers") List<Answer> answers});
}

/// @nodoc
class __$$AnswerListReponseImplCopyWithImpl<$Res>
    extends _$AnswerListReponseCopyWithImpl<$Res, _$AnswerListReponseImpl>
    implements _$$AnswerListReponseImplCopyWith<$Res> {
  __$$AnswerListReponseImplCopyWithImpl(_$AnswerListReponseImpl _value,
      $Res Function(_$AnswerListReponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerListReponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionId = null,
    Object? answerListName = null,
    Object? answers = null,
  }) {
    return _then(_$AnswerListReponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerListName: null == answerListName
          ? _value.answerListName
          : answerListName // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerListReponseImpl implements _AnswerListReponse {
  const _$AnswerListReponseImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "question_id") required this.questionId,
      @JsonKey(name: "answer_list_name") required this.answerListName,
      @JsonKey(name: "answers") required final List<Answer> answers})
      : _answers = answers;

  factory _$AnswerListReponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerListReponseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "question_id")
  final String questionId;
  @override
  @JsonKey(name: "answer_list_name")
  final String answerListName;
  final List<Answer> _answers;
  @override
  @JsonKey(name: "answers")
  List<Answer> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'AnswerListReponse(id: $id, questionId: $questionId, answerListName: $answerListName, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerListReponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerListName, answerListName) ||
                other.answerListName == answerListName) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, questionId, answerListName,
      const DeepCollectionEquality().hash(_answers));

  /// Create a copy of AnswerListReponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerListReponseImplCopyWith<_$AnswerListReponseImpl> get copyWith =>
      __$$AnswerListReponseImplCopyWithImpl<_$AnswerListReponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerListReponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerListReponse implements AnswerListReponse {
  const factory _AnswerListReponse(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "question_id") required final String questionId,
      @JsonKey(name: "answer_list_name") required final String answerListName,
      @JsonKey(name: "answers")
      required final List<Answer> answers}) = _$AnswerListReponseImpl;

  factory _AnswerListReponse.fromJson(Map<String, dynamic> json) =
      _$AnswerListReponseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "question_id")
  String get questionId;
  @override
  @JsonKey(name: "answer_list_name")
  String get answerListName;
  @override
  @JsonKey(name: "answers")
  List<Answer> get answers;

  /// Create a copy of AnswerListReponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerListReponseImplCopyWith<_$AnswerListReponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
mixin _$Answer {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_text")
  String get answerText => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_list_id")
  String get answerListId => throw _privateConstructorUsedError;
  @JsonKey(name: "related_answer_id")
  RelatedAnswerId get relatedAnswerId => throw _privateConstructorUsedError;

  /// Serializes this Answer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "answer_text") String answerText,
      @JsonKey(name: "answer_list_id") String answerListId,
      @JsonKey(name: "related_answer_id") RelatedAnswerId relatedAnswerId});

  $RelatedAnswerIdCopyWith<$Res> get relatedAnswerId;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answerText = null,
    Object? answerListId = null,
    Object? relatedAnswerId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      answerListId: null == answerListId
          ? _value.answerListId
          : answerListId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedAnswerId: null == relatedAnswerId
          ? _value.relatedAnswerId
          : relatedAnswerId // ignore: cast_nullable_to_non_nullable
              as RelatedAnswerId,
    ) as $Val);
  }

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RelatedAnswerIdCopyWith<$Res> get relatedAnswerId {
    return $RelatedAnswerIdCopyWith<$Res>(_value.relatedAnswerId, (value) {
      return _then(_value.copyWith(relatedAnswerId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "answer_text") String answerText,
      @JsonKey(name: "answer_list_id") String answerListId,
      @JsonKey(name: "related_answer_id") RelatedAnswerId relatedAnswerId});

  @override
  $RelatedAnswerIdCopyWith<$Res> get relatedAnswerId;
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answerText = null,
    Object? answerListId = null,
    Object? relatedAnswerId = null,
  }) {
    return _then(_$AnswerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answerText: null == answerText
          ? _value.answerText
          : answerText // ignore: cast_nullable_to_non_nullable
              as String,
      answerListId: null == answerListId
          ? _value.answerListId
          : answerListId // ignore: cast_nullable_to_non_nullable
              as String,
      relatedAnswerId: null == relatedAnswerId
          ? _value.relatedAnswerId
          : relatedAnswerId // ignore: cast_nullable_to_non_nullable
              as RelatedAnswerId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerImpl implements _Answer {
  const _$AnswerImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "answer_text") required this.answerText,
      @JsonKey(name: "answer_list_id") required this.answerListId,
      @JsonKey(name: "related_answer_id") required this.relatedAnswerId});

  factory _$AnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "answer_text")
  final String answerText;
  @override
  @JsonKey(name: "answer_list_id")
  final String answerListId;
  @override
  @JsonKey(name: "related_answer_id")
  final RelatedAnswerId relatedAnswerId;

  @override
  String toString() {
    return 'Answer(id: $id, answerText: $answerText, answerListId: $answerListId, relatedAnswerId: $relatedAnswerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answerText, answerText) ||
                other.answerText == answerText) &&
            (identical(other.answerListId, answerListId) ||
                other.answerListId == answerListId) &&
            (identical(other.relatedAnswerId, relatedAnswerId) ||
                other.relatedAnswerId == relatedAnswerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, answerText, answerListId, relatedAnswerId);

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerImplToJson(
      this,
    );
  }
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "answer_text") required final String answerText,
      @JsonKey(name: "answer_list_id") required final String answerListId,
      @JsonKey(name: "related_answer_id")
      required final RelatedAnswerId relatedAnswerId}) = _$AnswerImpl;

  factory _Answer.fromJson(Map<String, dynamic> json) = _$AnswerImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "answer_text")
  String get answerText;
  @override
  @JsonKey(name: "answer_list_id")
  String get answerListId;
  @override
  @JsonKey(name: "related_answer_id")
  RelatedAnswerId get relatedAnswerId;

  /// Create a copy of Answer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RelatedAnswerId _$RelatedAnswerIdFromJson(Map<String, dynamic> json) {
  return _RelatedAnswerId.fromJson(json);
}

/// @nodoc
mixin _$RelatedAnswerId {
  @JsonKey(name: "String")
  String get string => throw _privateConstructorUsedError;
  @JsonKey(name: "Valid")
  bool get valid => throw _privateConstructorUsedError;

  /// Serializes this RelatedAnswerId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedAnswerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedAnswerIdCopyWith<RelatedAnswerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedAnswerIdCopyWith<$Res> {
  factory $RelatedAnswerIdCopyWith(
          RelatedAnswerId value, $Res Function(RelatedAnswerId) then) =
      _$RelatedAnswerIdCopyWithImpl<$Res, RelatedAnswerId>;
  @useResult
  $Res call(
      {@JsonKey(name: "String") String string,
      @JsonKey(name: "Valid") bool valid});
}

/// @nodoc
class _$RelatedAnswerIdCopyWithImpl<$Res, $Val extends RelatedAnswerId>
    implements $RelatedAnswerIdCopyWith<$Res> {
  _$RelatedAnswerIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedAnswerId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      string: null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelatedAnswerIdImplCopyWith<$Res>
    implements $RelatedAnswerIdCopyWith<$Res> {
  factory _$$RelatedAnswerIdImplCopyWith(_$RelatedAnswerIdImpl value,
          $Res Function(_$RelatedAnswerIdImpl) then) =
      __$$RelatedAnswerIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "String") String string,
      @JsonKey(name: "Valid") bool valid});
}

/// @nodoc
class __$$RelatedAnswerIdImplCopyWithImpl<$Res>
    extends _$RelatedAnswerIdCopyWithImpl<$Res, _$RelatedAnswerIdImpl>
    implements _$$RelatedAnswerIdImplCopyWith<$Res> {
  __$$RelatedAnswerIdImplCopyWithImpl(
      _$RelatedAnswerIdImpl _value, $Res Function(_$RelatedAnswerIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelatedAnswerId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? string = null,
    Object? valid = null,
  }) {
    return _then(_$RelatedAnswerIdImpl(
      string: null == string
          ? _value.string
          : string // ignore: cast_nullable_to_non_nullable
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
class _$RelatedAnswerIdImpl implements _RelatedAnswerId {
  const _$RelatedAnswerIdImpl(
      {@JsonKey(name: "String") required this.string,
      @JsonKey(name: "Valid") required this.valid});

  factory _$RelatedAnswerIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedAnswerIdImplFromJson(json);

  @override
  @JsonKey(name: "String")
  final String string;
  @override
  @JsonKey(name: "Valid")
  final bool valid;

  @override
  String toString() {
    return 'RelatedAnswerId(string: $string, valid: $valid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedAnswerIdImpl &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, string, valid);

  /// Create a copy of RelatedAnswerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedAnswerIdImplCopyWith<_$RelatedAnswerIdImpl> get copyWith =>
      __$$RelatedAnswerIdImplCopyWithImpl<_$RelatedAnswerIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedAnswerIdImplToJson(
      this,
    );
  }
}

abstract class _RelatedAnswerId implements RelatedAnswerId {
  const factory _RelatedAnswerId(
          {@JsonKey(name: "String") required final String string,
          @JsonKey(name: "Valid") required final bool valid}) =
      _$RelatedAnswerIdImpl;

  factory _RelatedAnswerId.fromJson(Map<String, dynamic> json) =
      _$RelatedAnswerIdImpl.fromJson;

  @override
  @JsonKey(name: "String")
  String get string;
  @override
  @JsonKey(name: "Valid")
  bool get valid;

  /// Create a copy of RelatedAnswerId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedAnswerIdImplCopyWith<_$RelatedAnswerIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
