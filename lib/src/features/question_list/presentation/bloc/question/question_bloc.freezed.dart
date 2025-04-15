// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res, QuestionEvent>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res, $Val extends QuestionEvent>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchQuestionByIdImplCopyWith<$Res> {
  factory _$$FetchQuestionByIdImplCopyWith(_$FetchQuestionByIdImpl value,
          $Res Function(_$FetchQuestionByIdImpl) then) =
      __$$FetchQuestionByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchQuestionByIdImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$FetchQuestionByIdImpl>
    implements _$$FetchQuestionByIdImplCopyWith<$Res> {
  __$$FetchQuestionByIdImplCopyWithImpl(_$FetchQuestionByIdImpl _value,
      $Res Function(_$FetchQuestionByIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchQuestionByIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchQuestionByIdImpl implements _FetchQuestionById {
  const _$FetchQuestionByIdImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'QuestionEvent.fetchQuestionById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchQuestionByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchQuestionByIdImplCopyWith<_$FetchQuestionByIdImpl> get copyWith =>
      __$$FetchQuestionByIdImplCopyWithImpl<_$FetchQuestionByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return fetchQuestionById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return fetchQuestionById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchQuestionById != null) {
      return fetchQuestionById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return fetchQuestionById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return fetchQuestionById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchQuestionById != null) {
      return fetchQuestionById(this);
    }
    return orElse();
  }
}

abstract class _FetchQuestionById implements QuestionEvent {
  const factory _FetchQuestionById(final String id) = _$FetchQuestionByIdImpl;

  String get id;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchQuestionByIdImplCopyWith<_$FetchQuestionByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllQuestionsImplCopyWith<$Res> {
  factory _$$FetchAllQuestionsImplCopyWith(_$FetchAllQuestionsImpl value,
          $Res Function(_$FetchAllQuestionsImpl) then) =
      __$$FetchAllQuestionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllQuestionsImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$FetchAllQuestionsImpl>
    implements _$$FetchAllQuestionsImplCopyWith<$Res> {
  __$$FetchAllQuestionsImplCopyWithImpl(_$FetchAllQuestionsImpl _value,
      $Res Function(_$FetchAllQuestionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAllQuestionsImpl implements _FetchAllQuestions {
  const _$FetchAllQuestionsImpl();

  @override
  String toString() {
    return 'QuestionEvent.fetchAllQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllQuestionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return fetchAllQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return fetchAllQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchAllQuestions != null) {
      return fetchAllQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return fetchAllQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return fetchAllQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchAllQuestions != null) {
      return fetchAllQuestions(this);
    }
    return orElse();
  }
}

abstract class _FetchAllQuestions implements QuestionEvent {
  const factory _FetchAllQuestions() = _$FetchAllQuestionsImpl;
}

/// @nodoc
abstract class _$$FetchQuestionListByProjectIdImplCopyWith<$Res> {
  factory _$$FetchQuestionListByProjectIdImplCopyWith(
          _$FetchQuestionListByProjectIdImpl value,
          $Res Function(_$FetchQuestionListByProjectIdImpl) then) =
      __$$FetchQuestionListByProjectIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surveyId});
}

/// @nodoc
class __$$FetchQuestionListByProjectIdImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res,
        _$FetchQuestionListByProjectIdImpl>
    implements _$$FetchQuestionListByProjectIdImplCopyWith<$Res> {
  __$$FetchQuestionListByProjectIdImplCopyWithImpl(
      _$FetchQuestionListByProjectIdImpl _value,
      $Res Function(_$FetchQuestionListByProjectIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
  }) {
    return _then(_$FetchQuestionListByProjectIdImpl(
      null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchQuestionListByProjectIdImpl
    implements _FetchQuestionListByProjectId {
  const _$FetchQuestionListByProjectIdImpl(this.surveyId);

  @override
  final String surveyId;

  @override
  String toString() {
    return 'QuestionEvent.fetchQuestionListBySurveyId(surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchQuestionListByProjectIdImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surveyId);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchQuestionListByProjectIdImplCopyWith<
          _$FetchQuestionListByProjectIdImpl>
      get copyWith => __$$FetchQuestionListByProjectIdImplCopyWithImpl<
          _$FetchQuestionListByProjectIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return fetchQuestionListBySurveyId(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return fetchQuestionListBySurveyId?.call(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchQuestionListBySurveyId != null) {
      return fetchQuestionListBySurveyId(surveyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return fetchQuestionListBySurveyId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return fetchQuestionListBySurveyId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (fetchQuestionListBySurveyId != null) {
      return fetchQuestionListBySurveyId(this);
    }
    return orElse();
  }
}

abstract class _FetchQuestionListByProjectId implements QuestionEvent {
  const factory _FetchQuestionListByProjectId(final String surveyId) =
      _$FetchQuestionListByProjectIdImpl;

  String get surveyId;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchQuestionListByProjectIdImplCopyWith<
          _$FetchQuestionListByProjectIdImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitAnswersImplCopyWith<$Res> {
  factory _$$SubmitAnswersImplCopyWith(
          _$SubmitAnswersImpl value, $Res Function(_$SubmitAnswersImpl) then) =
      __$$SubmitAnswersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitAnswersImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$SubmitAnswersImpl>
    implements _$$SubmitAnswersImplCopyWith<$Res> {
  __$$SubmitAnswersImplCopyWithImpl(
      _$SubmitAnswersImpl _value, $Res Function(_$SubmitAnswersImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitAnswersImpl implements _SubmitAnswers {
  const _$SubmitAnswersImpl();

  @override
  String toString() {
    return 'QuestionEvent.submitAnswers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitAnswersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return submitAnswers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return submitAnswers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (submitAnswers != null) {
      return submitAnswers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return submitAnswers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return submitAnswers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (submitAnswers != null) {
      return submitAnswers(this);
    }
    return orElse();
  }
}

abstract class _SubmitAnswers implements QuestionEvent {
  const factory _SubmitAnswers() = _$SubmitAnswersImpl;
}

/// @nodoc
abstract class _$$AnswerQuestionImplCopyWith<$Res> {
  factory _$$AnswerQuestionImplCopyWith(_$AnswerQuestionImpl value,
          $Res Function(_$AnswerQuestionImpl) then) =
      __$$AnswerQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, String> answer, String surveyId});
}

/// @nodoc
class __$$AnswerQuestionImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$AnswerQuestionImpl>
    implements _$$AnswerQuestionImplCopyWith<$Res> {
  __$$AnswerQuestionImplCopyWithImpl(
      _$AnswerQuestionImpl _value, $Res Function(_$AnswerQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? surveyId = null,
  }) {
    return _then(_$AnswerQuestionImpl(
      answer: null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      surveyId: null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnswerQuestionImpl implements _AnswerQuestion {
  const _$AnswerQuestionImpl(
      {required final Map<String, String> answer, required this.surveyId})
      : _answer = answer;

  final Map<String, String> _answer;
  @override
  Map<String, String> get answer {
    if (_answer is EqualUnmodifiableMapView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answer);
  }

  @override
  final String surveyId;

  @override
  String toString() {
    return 'QuestionEvent.answerQuestion(answer: $answer, surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerQuestionImpl &&
            const DeepCollectionEquality().equals(other._answer, _answer) &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_answer), surveyId);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      __$$AnswerQuestionImplCopyWithImpl<_$AnswerQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return answerQuestion(answer, surveyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return answerQuestion?.call(answer, surveyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(answer, surveyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return answerQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return answerQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (answerQuestion != null) {
      return answerQuestion(this);
    }
    return orElse();
  }
}

abstract class _AnswerQuestion implements QuestionEvent {
  const factory _AnswerQuestion(
      {required final Map<String, String> answer,
      required final String surveyId}) = _$AnswerQuestionImpl;

  Map<String, String> get answer;
  String get surveyId;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerQuestionImplCopyWith<_$AnswerQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadAnswersFromBlocImplCopyWith<$Res> {
  factory _$$LoadAnswersFromBlocImplCopyWith(_$LoadAnswersFromBlocImpl value,
          $Res Function(_$LoadAnswersFromBlocImpl) then) =
      __$$LoadAnswersFromBlocImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surveyId});
}

/// @nodoc
class __$$LoadAnswersFromBlocImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$LoadAnswersFromBlocImpl>
    implements _$$LoadAnswersFromBlocImplCopyWith<$Res> {
  __$$LoadAnswersFromBlocImplCopyWithImpl(_$LoadAnswersFromBlocImpl _value,
      $Res Function(_$LoadAnswersFromBlocImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
  }) {
    return _then(_$LoadAnswersFromBlocImpl(
      null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadAnswersFromBlocImpl implements _LoadAnswersFromBloc {
  const _$LoadAnswersFromBlocImpl(this.surveyId);

  @override
  final String surveyId;

  @override
  String toString() {
    return 'QuestionEvent.loadAnswersFromBloc(surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAnswersFromBlocImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surveyId);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAnswersFromBlocImplCopyWith<_$LoadAnswersFromBlocImpl> get copyWith =>
      __$$LoadAnswersFromBlocImplCopyWithImpl<_$LoadAnswersFromBlocImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return loadAnswersFromBloc(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return loadAnswersFromBloc?.call(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (loadAnswersFromBloc != null) {
      return loadAnswersFromBloc(surveyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return loadAnswersFromBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return loadAnswersFromBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (loadAnswersFromBloc != null) {
      return loadAnswersFromBloc(this);
    }
    return orElse();
  }
}

abstract class _LoadAnswersFromBloc implements QuestionEvent {
  const factory _LoadAnswersFromBloc(final String surveyId) =
      _$LoadAnswersFromBlocImpl;

  String get surveyId;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAnswersFromBlocImplCopyWith<_$LoadAnswersFromBlocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSnackBarImplCopyWith<$Res> {
  factory _$$ShowSnackBarImplCopyWith(
          _$ShowSnackBarImpl value, $Res Function(_$ShowSnackBarImpl) then) =
      __$$ShowSnackBarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$ShowSnackBarImpl>
    implements _$$ShowSnackBarImplCopyWith<$Res> {
  __$$ShowSnackBarImplCopyWithImpl(
      _$ShowSnackBarImpl _value, $Res Function(_$ShowSnackBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBarImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarImpl implements _ShowSnackBar {
  const _$ShowSnackBarImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      __$$ShowSnackBarImplCopyWithImpl<_$ShowSnackBarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackBar implements QuestionEvent {
  const factory _ShowSnackBar(final String message) = _$ShowSnackBarImpl;

  String get message;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowSnackBarImplCopyWith<_$ShowSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAnswersImplCopyWith<$Res> {
  factory _$$ClearAnswersImplCopyWith(
          _$ClearAnswersImpl value, $Res Function(_$ClearAnswersImpl) then) =
      __$$ClearAnswersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surveyId});
}

/// @nodoc
class __$$ClearAnswersImplCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$ClearAnswersImpl>
    implements _$$ClearAnswersImplCopyWith<$Res> {
  __$$ClearAnswersImplCopyWithImpl(
      _$ClearAnswersImpl _value, $Res Function(_$ClearAnswersImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surveyId = null,
  }) {
    return _then(_$ClearAnswersImpl(
      null == surveyId
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClearAnswersImpl implements _ClearAnswers {
  const _$ClearAnswersImpl(this.surveyId);

  @override
  final String surveyId;

  @override
  String toString() {
    return 'QuestionEvent.clearAnswers(surveyId: $surveyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAnswersImpl &&
            (identical(other.surveyId, surveyId) ||
                other.surveyId == surveyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surveyId);

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClearAnswersImplCopyWith<_$ClearAnswersImpl> get copyWith =>
      __$$ClearAnswersImplCopyWithImpl<_$ClearAnswersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestionById,
    required TResult Function() fetchAllQuestions,
    required TResult Function(String surveyId) fetchQuestionListBySurveyId,
    required TResult Function() submitAnswers,
    required TResult Function(Map<String, String> answer, String surveyId)
        answerQuestion,
    required TResult Function(String surveyId) loadAnswersFromBloc,
    required TResult Function(String message) showSnackBar,
    required TResult Function(String surveyId) clearAnswers,
  }) {
    return clearAnswers(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestionById,
    TResult? Function()? fetchAllQuestions,
    TResult? Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult? Function()? submitAnswers,
    TResult? Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult? Function(String surveyId)? loadAnswersFromBloc,
    TResult? Function(String message)? showSnackBar,
    TResult? Function(String surveyId)? clearAnswers,
  }) {
    return clearAnswers?.call(surveyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestionById,
    TResult Function()? fetchAllQuestions,
    TResult Function(String surveyId)? fetchQuestionListBySurveyId,
    TResult Function()? submitAnswers,
    TResult Function(Map<String, String> answer, String surveyId)?
        answerQuestion,
    TResult Function(String surveyId)? loadAnswersFromBloc,
    TResult Function(String message)? showSnackBar,
    TResult Function(String surveyId)? clearAnswers,
    required TResult orElse(),
  }) {
    if (clearAnswers != null) {
      return clearAnswers(surveyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuestionById value) fetchQuestionById,
    required TResult Function(_FetchAllQuestions value) fetchAllQuestions,
    required TResult Function(_FetchQuestionListByProjectId value)
        fetchQuestionListBySurveyId,
    required TResult Function(_SubmitAnswers value) submitAnswers,
    required TResult Function(_AnswerQuestion value) answerQuestion,
    required TResult Function(_LoadAnswersFromBloc value) loadAnswersFromBloc,
    required TResult Function(_ShowSnackBar value) showSnackBar,
    required TResult Function(_ClearAnswers value) clearAnswers,
  }) {
    return clearAnswers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuestionById value)? fetchQuestionById,
    TResult? Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult? Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult? Function(_SubmitAnswers value)? submitAnswers,
    TResult? Function(_AnswerQuestion value)? answerQuestion,
    TResult? Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult? Function(_ShowSnackBar value)? showSnackBar,
    TResult? Function(_ClearAnswers value)? clearAnswers,
  }) {
    return clearAnswers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuestionById value)? fetchQuestionById,
    TResult Function(_FetchAllQuestions value)? fetchAllQuestions,
    TResult Function(_FetchQuestionListByProjectId value)?
        fetchQuestionListBySurveyId,
    TResult Function(_SubmitAnswers value)? submitAnswers,
    TResult Function(_AnswerQuestion value)? answerQuestion,
    TResult Function(_LoadAnswersFromBloc value)? loadAnswersFromBloc,
    TResult Function(_ShowSnackBar value)? showSnackBar,
    TResult Function(_ClearAnswers value)? clearAnswers,
    required TResult orElse(),
  }) {
    if (clearAnswers != null) {
      return clearAnswers(this);
    }
    return orElse();
  }
}

abstract class _ClearAnswers implements QuestionEvent {
  const factory _ClearAnswers(final String surveyId) = _$ClearAnswersImpl;

  String get surveyId;

  /// Create a copy of QuestionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClearAnswersImplCopyWith<_$ClearAnswersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuestionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'QuestionState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements QuestionState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestionEntity> questions, bool loadAnswers});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
    Object? loadAnswers = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>,
      null == loadAnswers
          ? _value.loadAnswers
          : loadAnswers // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(
      final List<QuestionEntity> questions, this.loadAnswers)
      : _questions = questions;

  final List<QuestionEntity> _questions;
  @override
  List<QuestionEntity> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final bool loadAnswers;

  @override
  String toString() {
    return 'QuestionState.loadSuccess(questions: $questions, loadAnswers: $loadAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.loadAnswers, loadAnswers) ||
                other.loadAnswers == loadAnswers));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questions), loadAnswers);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return loadSuccess(questions, loadAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return loadSuccess?.call(questions, loadAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(questions, loadAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements QuestionState {
  const factory _LoadSuccess(
          final List<QuestionEntity> questions, final bool loadAnswers) =
      _$LoadSuccessImpl;

  List<QuestionEntity> get questions;
  bool get loadAnswers;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'QuestionState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements QuestionState {
  const factory _LoadFailure(final String error) = _$LoadFailureImpl;

  String get error;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerChangedImplCopyWith<$Res> {
  factory _$$AnswerChangedImplCopyWith(
          _$AnswerChangedImpl value, $Res Function(_$AnswerChangedImpl) then) =
      __$$AnswerChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerChangedImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerChangedImpl>
    implements _$$AnswerChangedImplCopyWith<$Res> {
  __$$AnswerChangedImplCopyWithImpl(
      _$AnswerChangedImpl _value, $Res Function(_$AnswerChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerChangedImpl implements _AnswerChanged {
  const _$AnswerChangedImpl();

  @override
  String toString() {
    return 'QuestionState.answerChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnswerChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerChanged != null) {
      return answerChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerChanged != null) {
      return answerChanged(this);
    }
    return orElse();
  }
}

abstract class _AnswerChanged implements QuestionState {
  const factory _AnswerChanged() = _$AnswerChangedImpl;
}

/// @nodoc
abstract class _$$AnswerSavedErrorImplCopyWith<$Res> {
  factory _$$AnswerSavedErrorImplCopyWith(_$AnswerSavedErrorImpl value,
          $Res Function(_$AnswerSavedErrorImpl) then) =
      __$$AnswerSavedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerSavedErrorImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerSavedErrorImpl>
    implements _$$AnswerSavedErrorImplCopyWith<$Res> {
  __$$AnswerSavedErrorImplCopyWithImpl(_$AnswerSavedErrorImpl _value,
      $Res Function(_$AnswerSavedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerSavedErrorImpl implements _AnswerSavedError {
  const _$AnswerSavedErrorImpl();

  @override
  String toString() {
    return 'QuestionState.answerSavedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnswerSavedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerSavedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerSavedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSavedError != null) {
      return answerSavedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerSavedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerSavedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSavedError != null) {
      return answerSavedError(this);
    }
    return orElse();
  }
}

abstract class _AnswerSavedError implements QuestionState {
  const factory _AnswerSavedError() = _$AnswerSavedErrorImpl;
}

/// @nodoc
abstract class _$$AnswerSaveImplCopyWith<$Res> {
  factory _$$AnswerSaveImplCopyWith(
          _$AnswerSaveImpl value, $Res Function(_$AnswerSaveImpl) then) =
      __$$AnswerSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerSaveImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerSaveImpl>
    implements _$$AnswerSaveImplCopyWith<$Res> {
  __$$AnswerSaveImplCopyWithImpl(
      _$AnswerSaveImpl _value, $Res Function(_$AnswerSaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerSaveImpl implements _AnswerSave {
  const _$AnswerSaveImpl();

  @override
  String toString() {
    return 'QuestionState.answerSaved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AnswerSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSaved != null) {
      return answerSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSaved != null) {
      return answerSaved(this);
    }
    return orElse();
  }
}

abstract class _AnswerSave implements QuestionState {
  const factory _AnswerSave() = _$AnswerSaveImpl;
}

/// @nodoc
abstract class _$$AnswerSubmittedSuccessImplCopyWith<$Res> {
  factory _$$AnswerSubmittedSuccessImplCopyWith(
          _$AnswerSubmittedSuccessImpl value,
          $Res Function(_$AnswerSubmittedSuccessImpl) then) =
      __$$AnswerSubmittedSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerSubmittedSuccessImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerSubmittedSuccessImpl>
    implements _$$AnswerSubmittedSuccessImplCopyWith<$Res> {
  __$$AnswerSubmittedSuccessImplCopyWithImpl(
      _$AnswerSubmittedSuccessImpl _value,
      $Res Function(_$AnswerSubmittedSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerSubmittedSuccessImpl implements _AnswerSubmittedSuccess {
  const _$AnswerSubmittedSuccessImpl();

  @override
  String toString() {
    return 'QuestionState.answerSubmittedSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSubmittedSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerSubmittedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerSubmittedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedSuccess != null) {
      return answerSubmittedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerSubmittedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerSubmittedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedSuccess != null) {
      return answerSubmittedSuccess(this);
    }
    return orElse();
  }
}

abstract class _AnswerSubmittedSuccess implements QuestionState {
  const factory _AnswerSubmittedSuccess() = _$AnswerSubmittedSuccessImpl;
}

/// @nodoc
abstract class _$$AnswerSubmittedFailureImplCopyWith<$Res> {
  factory _$$AnswerSubmittedFailureImplCopyWith(
          _$AnswerSubmittedFailureImpl value,
          $Res Function(_$AnswerSubmittedFailureImpl) then) =
      __$$AnswerSubmittedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AnswerSubmittedFailureImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerSubmittedFailureImpl>
    implements _$$AnswerSubmittedFailureImplCopyWith<$Res> {
  __$$AnswerSubmittedFailureImplCopyWithImpl(
      _$AnswerSubmittedFailureImpl _value,
      $Res Function(_$AnswerSubmittedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AnswerSubmittedFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AnswerSubmittedFailureImpl implements _AnswerSubmittedFailure {
  const _$AnswerSubmittedFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'QuestionState.answerSubmittedFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSubmittedFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerSubmittedFailureImplCopyWith<_$AnswerSubmittedFailureImpl>
      get copyWith => __$$AnswerSubmittedFailureImplCopyWithImpl<
          _$AnswerSubmittedFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerSubmittedFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerSubmittedFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedFailure != null) {
      return answerSubmittedFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerSubmittedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerSubmittedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedFailure != null) {
      return answerSubmittedFailure(this);
    }
    return orElse();
  }
}

abstract class _AnswerSubmittedFailure implements QuestionState {
  const factory _AnswerSubmittedFailure(final String error) =
      _$AnswerSubmittedFailureImpl;

  String get error;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerSubmittedFailureImplCopyWith<_$AnswerSubmittedFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnswerSubmittedInProgressImplCopyWith<$Res> {
  factory _$$AnswerSubmittedInProgressImplCopyWith(
          _$AnswerSubmittedInProgressImpl value,
          $Res Function(_$AnswerSubmittedInProgressImpl) then) =
      __$$AnswerSubmittedInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnswerSubmittedInProgressImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$AnswerSubmittedInProgressImpl>
    implements _$$AnswerSubmittedInProgressImplCopyWith<$Res> {
  __$$AnswerSubmittedInProgressImplCopyWithImpl(
      _$AnswerSubmittedInProgressImpl _value,
      $Res Function(_$AnswerSubmittedInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnswerSubmittedInProgressImpl implements _AnswerSubmittedInProgress {
  const _$AnswerSubmittedInProgressImpl();

  @override
  String toString() {
    return 'QuestionState.answerSubmittedInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerSubmittedInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return answerSubmittedInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return answerSubmittedInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedInProgress != null) {
      return answerSubmittedInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return answerSubmittedInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return answerSubmittedInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (answerSubmittedInProgress != null) {
      return answerSubmittedInProgress(this);
    }
    return orElse();
  }
}

abstract class _AnswerSubmittedInProgress implements QuestionState {
  const factory _AnswerSubmittedInProgress() = _$AnswerSubmittedInProgressImpl;
}

/// @nodoc
abstract class _$$SnackBarShowingImplCopyWith<$Res> {
  factory _$$SnackBarShowingImplCopyWith(_$SnackBarShowingImpl value,
          $Res Function(_$SnackBarShowingImpl) then) =
      __$$SnackBarShowingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SnackBarShowingImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$SnackBarShowingImpl>
    implements _$$SnackBarShowingImplCopyWith<$Res> {
  __$$SnackBarShowingImplCopyWithImpl(
      _$SnackBarShowingImpl _value, $Res Function(_$SnackBarShowingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SnackBarShowingImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SnackBarShowingImpl implements _SnackBarShowing {
  const _$SnackBarShowingImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionState.snackBarShowing(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackBarShowingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackBarShowingImplCopyWith<_$SnackBarShowingImpl> get copyWith =>
      __$$SnackBarShowingImplCopyWithImpl<_$SnackBarShowingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<QuestionEntity> questions, bool loadAnswers)
        loadSuccess,
    required TResult Function(String error) loadFailure,
    required TResult Function() answerChanged,
    required TResult Function() answerSavedError,
    required TResult Function() answerSaved,
    required TResult Function() answerSubmittedSuccess,
    required TResult Function(String error) answerSubmittedFailure,
    required TResult Function() answerSubmittedInProgress,
    required TResult Function(String message) snackBarShowing,
  }) {
    return snackBarShowing(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult? Function(String error)? loadFailure,
    TResult? Function()? answerChanged,
    TResult? Function()? answerSavedError,
    TResult? Function()? answerSaved,
    TResult? Function()? answerSubmittedSuccess,
    TResult? Function(String error)? answerSubmittedFailure,
    TResult? Function()? answerSubmittedInProgress,
    TResult? Function(String message)? snackBarShowing,
  }) {
    return snackBarShowing?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<QuestionEntity> questions, bool loadAnswers)?
        loadSuccess,
    TResult Function(String error)? loadFailure,
    TResult Function()? answerChanged,
    TResult Function()? answerSavedError,
    TResult Function()? answerSaved,
    TResult Function()? answerSubmittedSuccess,
    TResult Function(String error)? answerSubmittedFailure,
    TResult Function()? answerSubmittedInProgress,
    TResult Function(String message)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (snackBarShowing != null) {
      return snackBarShowing(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_AnswerChanged value) answerChanged,
    required TResult Function(_AnswerSavedError value) answerSavedError,
    required TResult Function(_AnswerSave value) answerSaved,
    required TResult Function(_AnswerSubmittedSuccess value)
        answerSubmittedSuccess,
    required TResult Function(_AnswerSubmittedFailure value)
        answerSubmittedFailure,
    required TResult Function(_AnswerSubmittedInProgress value)
        answerSubmittedInProgress,
    required TResult Function(_SnackBarShowing value) snackBarShowing,
  }) {
    return snackBarShowing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
    TResult? Function(_AnswerChanged value)? answerChanged,
    TResult? Function(_AnswerSavedError value)? answerSavedError,
    TResult? Function(_AnswerSave value)? answerSaved,
    TResult? Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult? Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult? Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult? Function(_SnackBarShowing value)? snackBarShowing,
  }) {
    return snackBarShowing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_AnswerChanged value)? answerChanged,
    TResult Function(_AnswerSavedError value)? answerSavedError,
    TResult Function(_AnswerSave value)? answerSaved,
    TResult Function(_AnswerSubmittedSuccess value)? answerSubmittedSuccess,
    TResult Function(_AnswerSubmittedFailure value)? answerSubmittedFailure,
    TResult Function(_AnswerSubmittedInProgress value)?
        answerSubmittedInProgress,
    TResult Function(_SnackBarShowing value)? snackBarShowing,
    required TResult orElse(),
  }) {
    if (snackBarShowing != null) {
      return snackBarShowing(this);
    }
    return orElse();
  }
}

abstract class _SnackBarShowing implements QuestionState {
  const factory _SnackBarShowing(final String message) = _$SnackBarShowingImpl;

  String get message;

  /// Create a copy of QuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackBarShowingImplCopyWith<_$SnackBarShowingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
