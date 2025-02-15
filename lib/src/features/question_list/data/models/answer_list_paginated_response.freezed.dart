// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_list_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnswerListPaginatedResponse _$AnswerListPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _AnswerListPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$AnswerListPaginatedResponse {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page_count")
  int get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<AnswerListReponse>? get answerLists =>
      throw _privateConstructorUsedError;

  /// Serializes this AnswerListPaginatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnswerListPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnswerListPaginatedResponseCopyWith<AnswerListPaginatedResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerListPaginatedResponseCopyWith<$Res> {
  factory $AnswerListPaginatedResponseCopyWith(
          AnswerListPaginatedResponse value,
          $Res Function(AnswerListPaginatedResponse) then) =
      _$AnswerListPaginatedResponseCopyWithImpl<$Res,
          AnswerListPaginatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<AnswerListReponse>? answerLists});
}

/// @nodoc
class _$AnswerListPaginatedResponseCopyWithImpl<$Res,
        $Val extends AnswerListPaginatedResponse>
    implements $AnswerListPaginatedResponseCopyWith<$Res> {
  _$AnswerListPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnswerListPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? answerLists = freezed,
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
      answerLists: freezed == answerLists
          ? _value.answerLists
          : answerLists // ignore: cast_nullable_to_non_nullable
              as List<AnswerListReponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerListPaginatedResponseImplCopyWith<$Res>
    implements $AnswerListPaginatedResponseCopyWith<$Res> {
  factory _$$AnswerListPaginatedResponseImplCopyWith(
          _$AnswerListPaginatedResponseImpl value,
          $Res Function(_$AnswerListPaginatedResponseImpl) then) =
      __$$AnswerListPaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<AnswerListReponse>? answerLists});
}

/// @nodoc
class __$$AnswerListPaginatedResponseImplCopyWithImpl<$Res>
    extends _$AnswerListPaginatedResponseCopyWithImpl<$Res,
        _$AnswerListPaginatedResponseImpl>
    implements _$$AnswerListPaginatedResponseImplCopyWith<$Res> {
  __$$AnswerListPaginatedResponseImplCopyWithImpl(
      _$AnswerListPaginatedResponseImpl _value,
      $Res Function(_$AnswerListPaginatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnswerListPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? answerLists = freezed,
  }) {
    return _then(_$AnswerListPaginatedResponseImpl(
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
      answerLists: freezed == answerLists
          ? _value._answerLists
          : answerLists // ignore: cast_nullable_to_non_nullable
              as List<AnswerListReponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnswerListPaginatedResponseImpl
    implements _AnswerListPaginatedResponse {
  const _$AnswerListPaginatedResponseImpl(
      {@JsonKey(name: "page") required this.page,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "page_count") required this.pageCount,
      @JsonKey(name: "total_count") required this.totalCount,
      @JsonKey(name: "items")
      required final List<AnswerListReponse>? answerLists})
      : _answerLists = answerLists;

  factory _$AnswerListPaginatedResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnswerListPaginatedResponseImplFromJson(json);

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
  final List<AnswerListReponse>? _answerLists;
  @override
  @JsonKey(name: "items")
  List<AnswerListReponse>? get answerLists {
    final value = _answerLists;
    if (value == null) return null;
    if (_answerLists is EqualUnmodifiableListView) return _answerLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnswerListPaginatedResponse(page: $page, perPage: $perPage, pageCount: $pageCount, totalCount: $totalCount, answerLists: $answerLists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerListPaginatedResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality()
                .equals(other._answerLists, _answerLists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, pageCount,
      totalCount, const DeepCollectionEquality().hash(_answerLists));

  /// Create a copy of AnswerListPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerListPaginatedResponseImplCopyWith<_$AnswerListPaginatedResponseImpl>
      get copyWith => __$$AnswerListPaginatedResponseImplCopyWithImpl<
          _$AnswerListPaginatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerListPaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _AnswerListPaginatedResponse
    implements AnswerListPaginatedResponse {
  const factory _AnswerListPaginatedResponse(
          {@JsonKey(name: "page") required final int page,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "page_count") required final int pageCount,
          @JsonKey(name: "total_count") required final int totalCount,
          @JsonKey(name: "items")
          required final List<AnswerListReponse>? answerLists}) =
      _$AnswerListPaginatedResponseImpl;

  factory _AnswerListPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$AnswerListPaginatedResponseImpl.fromJson;

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
  List<AnswerListReponse>? get answerLists;

  /// Create a copy of AnswerListPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerListPaginatedResponseImplCopyWith<_$AnswerListPaginatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
