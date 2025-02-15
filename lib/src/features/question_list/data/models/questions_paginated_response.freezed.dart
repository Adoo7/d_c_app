// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionsPaginatedResponse _$QuestionsPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionsPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionsPaginatedResponse {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page_count")
  int get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<QuestionModel>? get questions => throw _privateConstructorUsedError;

  /// Serializes this QuestionsPaginatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionsPaginatedResponseCopyWith<QuestionsPaginatedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsPaginatedResponseCopyWith<$Res> {
  factory $QuestionsPaginatedResponseCopyWith(QuestionsPaginatedResponse value,
          $Res Function(QuestionsPaginatedResponse) then) =
      _$QuestionsPaginatedResponseCopyWithImpl<$Res,
          QuestionsPaginatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<QuestionModel>? questions});
}

/// @nodoc
class _$QuestionsPaginatedResponseCopyWithImpl<$Res,
        $Val extends QuestionsPaginatedResponse>
    implements $QuestionsPaginatedResponseCopyWith<$Res> {
  _$QuestionsPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsPaginatedResponseImplCopyWith<$Res>
    implements $QuestionsPaginatedResponseCopyWith<$Res> {
  factory _$$QuestionsPaginatedResponseImplCopyWith(
          _$QuestionsPaginatedResponseImpl value,
          $Res Function(_$QuestionsPaginatedResponseImpl) then) =
      __$$QuestionsPaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<QuestionModel>? questions});
}

/// @nodoc
class __$$QuestionsPaginatedResponseImplCopyWithImpl<$Res>
    extends _$QuestionsPaginatedResponseCopyWithImpl<$Res,
        _$QuestionsPaginatedResponseImpl>
    implements _$$QuestionsPaginatedResponseImplCopyWith<$Res> {
  __$$QuestionsPaginatedResponseImplCopyWithImpl(
      _$QuestionsPaginatedResponseImpl _value,
      $Res Function(_$QuestionsPaginatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? questions = freezed,
  }) {
    return _then(_$QuestionsPaginatedResponseImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsPaginatedResponseImpl implements _QuestionsPaginatedResponse {
  const _$QuestionsPaginatedResponseImpl(
      {@JsonKey(name: "page") required this.page,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "page_count") required this.pageCount,
      @JsonKey(name: "total_count") required this.totalCount,
      @JsonKey(name: "items") required final List<QuestionModel>? questions})
      : _questions = questions;

  factory _$QuestionsPaginatedResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuestionsPaginatedResponseImplFromJson(json);

  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "per_page")
  final int perPage;
  @override
  @JsonKey(name: "page_count")
  final int pageCount;
  @override
  @JsonKey(name: "total_count")
  final int totalCount;
  final List<QuestionModel>? _questions;
  @override
  @JsonKey(name: "items")
  List<QuestionModel>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuestionsPaginatedResponse(page: $page, perPage: $perPage, pageCount: $pageCount, totalCount: $totalCount, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsPaginatedResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, pageCount,
      totalCount, const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuestionsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsPaginatedResponseImplCopyWith<_$QuestionsPaginatedResponseImpl>
      get copyWith => __$$QuestionsPaginatedResponseImplCopyWithImpl<
          _$QuestionsPaginatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsPaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _QuestionsPaginatedResponse
    implements QuestionsPaginatedResponse {
  const factory _QuestionsPaginatedResponse(
          {@JsonKey(name: "page") required final int page,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "page_count") required final int pageCount,
          @JsonKey(name: "total_count") required final int totalCount,
          @JsonKey(name: "items")
          required final List<QuestionModel>? questions}) =
      _$QuestionsPaginatedResponseImpl;

  factory _QuestionsPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$QuestionsPaginatedResponseImpl.fromJson;

  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "per_page")
  int get perPage;
  @override
  @JsonKey(name: "page_count")
  int get pageCount;
  @override
  @JsonKey(name: "total_count")
  int get totalCount;
  @override
  @JsonKey(name: "items")
  List<QuestionModel>? get questions;

  /// Create a copy of QuestionsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionsPaginatedResponseImplCopyWith<_$QuestionsPaginatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
