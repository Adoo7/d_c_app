// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surveys_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurveysPaginatedResponse _$SurveysPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _SurveysPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$SurveysPaginatedResponse {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page_count")
  int get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<SurveyModel>? get surveys => throw _privateConstructorUsedError;

  /// Serializes this SurveysPaginatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurveysPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurveysPaginatedResponseCopyWith<SurveysPaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveysPaginatedResponseCopyWith<$Res> {
  factory $SurveysPaginatedResponseCopyWith(SurveysPaginatedResponse value,
          $Res Function(SurveysPaginatedResponse) then) =
      _$SurveysPaginatedResponseCopyWithImpl<$Res, SurveysPaginatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<SurveyModel>? surveys});
}

/// @nodoc
class _$SurveysPaginatedResponseCopyWithImpl<$Res,
        $Val extends SurveysPaginatedResponse>
    implements $SurveysPaginatedResponseCopyWith<$Res> {
  _$SurveysPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurveysPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? surveys = freezed,
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
      surveys: freezed == surveys
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<SurveyModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurveysPaginatedResponseImplCopyWith<$Res>
    implements $SurveysPaginatedResponseCopyWith<$Res> {
  factory _$$SurveysPaginatedResponseImplCopyWith(
          _$SurveysPaginatedResponseImpl value,
          $Res Function(_$SurveysPaginatedResponseImpl) then) =
      __$$SurveysPaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<SurveyModel>? surveys});
}

/// @nodoc
class __$$SurveysPaginatedResponseImplCopyWithImpl<$Res>
    extends _$SurveysPaginatedResponseCopyWithImpl<$Res,
        _$SurveysPaginatedResponseImpl>
    implements _$$SurveysPaginatedResponseImplCopyWith<$Res> {
  __$$SurveysPaginatedResponseImplCopyWithImpl(
      _$SurveysPaginatedResponseImpl _value,
      $Res Function(_$SurveysPaginatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurveysPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? surveys = freezed,
  }) {
    return _then(_$SurveysPaginatedResponseImpl(
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
      surveys: freezed == surveys
          ? _value._surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<SurveyModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurveysPaginatedResponseImpl implements _SurveysPaginatedResponse {
  const _$SurveysPaginatedResponseImpl(
      {@JsonKey(name: "page") required this.page,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "page_count") required this.pageCount,
      @JsonKey(name: "total_count") required this.totalCount,
      @JsonKey(name: "items") required final List<SurveyModel>? surveys})
      : _surveys = surveys;

  factory _$SurveysPaginatedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurveysPaginatedResponseImplFromJson(json);

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
  final List<SurveyModel>? _surveys;
  @override
  @JsonKey(name: "items")
  List<SurveyModel>? get surveys {
    final value = _surveys;
    if (value == null) return null;
    if (_surveys is EqualUnmodifiableListView) return _surveys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SurveysPaginatedResponse(page: $page, perPage: $perPage, pageCount: $pageCount, totalCount: $totalCount, surveys: $surveys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveysPaginatedResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._surveys, _surveys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, pageCount,
      totalCount, const DeepCollectionEquality().hash(_surveys));

  /// Create a copy of SurveysPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurveysPaginatedResponseImplCopyWith<_$SurveysPaginatedResponseImpl>
      get copyWith => __$$SurveysPaginatedResponseImplCopyWithImpl<
          _$SurveysPaginatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurveysPaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _SurveysPaginatedResponse implements SurveysPaginatedResponse {
  const factory _SurveysPaginatedResponse(
          {@JsonKey(name: "page") required final int page,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "page_count") required final int pageCount,
          @JsonKey(name: "total_count") required final int totalCount,
          @JsonKey(name: "items") required final List<SurveyModel>? surveys}) =
      _$SurveysPaginatedResponseImpl;

  factory _SurveysPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$SurveysPaginatedResponseImpl.fromJson;

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
  List<SurveyModel>? get surveys;

  /// Create a copy of SurveysPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurveysPaginatedResponseImplCopyWith<_$SurveysPaginatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
