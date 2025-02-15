// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "question")
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "survey_id")
  NullableStringModel get surveyId => throw _privateConstructorUsedError;
  @JsonKey(name: "answer_type")
  String get answerType => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  NullableStringModel get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "required")
  bool get required => throw _privateConstructorUsedError;
  @JsonKey(name: "related_question_id")
  NullableStringModel get relatedQuestionId =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "answer_list_id")
  NullableStringModel get answerListId => throw _privateConstructorUsedError;

  /// Serializes this QuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "survey_id") NullableStringModel surveyId,
      @JsonKey(name: "answer_type") String answerType,
      @JsonKey(name: "answer") NullableStringModel answer,
      @JsonKey(name: "required") bool required,
      @JsonKey(name: "related_question_id")
      NullableStringModel relatedQuestionId,
      @JsonKey(name: "answer_list_id") NullableStringModel answerListId});

  $NullableStringModelCopyWith<$Res> get surveyId;
  $NullableStringModelCopyWith<$Res> get answer;
  $NullableStringModelCopyWith<$Res> get relatedQuestionId;
  $NullableStringModelCopyWith<$Res> get answerListId;
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? surveyId = null,
    Object? answerType = null,
    Object? answer = null,
    Object? required = null,
    Object? relatedQuestionId = null,
    Object? answerListId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      surveyId: null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedQuestionId: null == relatedQuestionId
          ? _value.relatedQuestionId
          : relatedQuestionId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      answerListId: null == answerListId
          ? _value.answerListId
          : answerListId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
    ) as $Val);
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NullableStringModelCopyWith<$Res> get surveyId {
    return $NullableStringModelCopyWith<$Res>(_value.surveyId, (value) {
      return _then(_value.copyWith(surveyId: value) as $Val);
    });
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NullableStringModelCopyWith<$Res> get answer {
    return $NullableStringModelCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value) as $Val);
    });
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NullableStringModelCopyWith<$Res> get relatedQuestionId {
    return $NullableStringModelCopyWith<$Res>(_value.relatedQuestionId,
        (value) {
      return _then(_value.copyWith(relatedQuestionId: value) as $Val);
    });
  }

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NullableStringModelCopyWith<$Res> get answerListId {
    return $NullableStringModelCopyWith<$Res>(_value.answerListId, (value) {
      return _then(_value.copyWith(answerListId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "question") String question,
      @JsonKey(name: "survey_id") NullableStringModel surveyId,
      @JsonKey(name: "answer_type") String answerType,
      @JsonKey(name: "answer") NullableStringModel answer,
      @JsonKey(name: "required") bool required,
      @JsonKey(name: "related_question_id")
      NullableStringModel relatedQuestionId,
      @JsonKey(name: "answer_list_id") NullableStringModel answerListId});

  @override
  $NullableStringModelCopyWith<$Res> get surveyId;
  @override
  $NullableStringModelCopyWith<$Res> get answer;
  @override
  $NullableStringModelCopyWith<$Res> get relatedQuestionId;
  @override
  $NullableStringModelCopyWith<$Res> get answerListId;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? surveyId = null,
    Object? answerType = null,
    Object? answer = null,
    Object? required = null,
    Object? relatedQuestionId = null,
    Object? answerListId = null,
  }) {
    return _then(_$QuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      surveyId: null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      answerType: null == answerType
          ? _value.answerType
          : answerType // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      relatedQuestionId: null == relatedQuestionId
          ? _value.relatedQuestionId
          : relatedQuestionId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
      answerListId: null == answerListId
          ? _value.answerListId
          : answerListId // ignore: cast_nullable_to_non_nullable
              as NullableStringModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "question") required this.question,
      @JsonKey(name: "survey_id") required this.surveyId,
      @JsonKey(name: "answer_type") required this.answerType,
      @JsonKey(name: "answer") required this.answer,
      @JsonKey(name: "required") required this.required,
      @JsonKey(name: "related_question_id") required this.relatedQuestionId,
      @JsonKey(name: "answer_list_id") required this.answerListId});

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "question")
  final String question;
  @override
  @JsonKey(name: "survey_id")
  final NullableStringModel surveyId;
  @override
  @JsonKey(name: "answer_type")
  final String answerType;
  @override
  @JsonKey(name: "answer")
  final NullableStringModel answer;
  @override
  @JsonKey(name: "required")
  final bool required;
  @override
  @JsonKey(name: "related_question_id")
  final NullableStringModel relatedQuestionId;
  @override
  @JsonKey(name: "answer_list_id")
  final NullableStringModel answerListId;

  @override
  String toString() {
    return 'QuestionModel(id: $id, question: $question, surveyId: $surveyId, answerType: $answerType, answer: $answer, required: $required, relatedQuestionId: $relatedQuestionId, answerListId: $answerListId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId) &&
            (identical(other.answerType, answerType) ||
                other.answerType == answerType) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.relatedQuestionId, relatedQuestionId) ||
                other.relatedQuestionId == relatedQuestionId) &&
            (identical(other.answerListId, answerListId) ||
                other.answerListId == answerListId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, question, surveyId,
      answerType, answer, required, relatedQuestionId, answerListId);

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements QuestionModel {
  const factory _Question(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "question") required final String question,
      @JsonKey(name: "survey_id") required final NullableStringModel surveyId,
      @JsonKey(name: "answer_type") required final String answerType,
      @JsonKey(name: "answer") required final NullableStringModel answer,
      @JsonKey(name: "required") required final bool required,
      @JsonKey(name: "related_question_id")
      required final NullableStringModel relatedQuestionId,
      @JsonKey(name: "answer_list_id")
      required final NullableStringModel answerListId}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(name: "survey_id")
  NullableStringModel get surveyId;
  @override
  @JsonKey(name: "answer_type")
  String get answerType;
  @override
  @JsonKey(name: "answer")
  NullableStringModel get answer;
  @override
  @JsonKey(name: "required")
  bool get required;
  @override
  @JsonKey(name: "related_question_id")
  NullableStringModel get relatedQuestionId;
  @override
  @JsonKey(name: "answer_list_id")
  NullableStringModel get answerListId;

  /// Create a copy of QuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
