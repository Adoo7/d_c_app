// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_paginated_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectsPaginatedResponse _$ProjectsPaginatedResponseFromJson(
    Map<String, dynamic> json) {
  return _ProjectsPaginatedResponse.fromJson(json);
}

/// @nodoc
mixin _$ProjectsPaginatedResponse {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "page_count")
  int get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<ProjectModel>? get projects => throw _privateConstructorUsedError;

  /// Serializes this ProjectsPaginatedResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectsPaginatedResponseCopyWith<ProjectsPaginatedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsPaginatedResponseCopyWith<$Res> {
  factory $ProjectsPaginatedResponseCopyWith(ProjectsPaginatedResponse value,
          $Res Function(ProjectsPaginatedResponse) then) =
      _$ProjectsPaginatedResponseCopyWithImpl<$Res, ProjectsPaginatedResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<ProjectModel>? projects});
}

/// @nodoc
class _$ProjectsPaginatedResponseCopyWithImpl<$Res,
        $Val extends ProjectsPaginatedResponse>
    implements $ProjectsPaginatedResponseCopyWith<$Res> {
  _$ProjectsPaginatedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? projects = freezed,
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
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectsPaginatedResponseImplCopyWith<$Res>
    implements $ProjectsPaginatedResponseCopyWith<$Res> {
  factory _$$ProjectsPaginatedResponseImplCopyWith(
          _$ProjectsPaginatedResponseImpl value,
          $Res Function(_$ProjectsPaginatedResponseImpl) then) =
      __$$ProjectsPaginatedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "per_page") int perPage,
      @JsonKey(name: "page_count") int pageCount,
      @JsonKey(name: "total_count") int totalCount,
      @JsonKey(name: "items") List<ProjectModel>? projects});
}

/// @nodoc
class __$$ProjectsPaginatedResponseImplCopyWithImpl<$Res>
    extends _$ProjectsPaginatedResponseCopyWithImpl<$Res,
        _$ProjectsPaginatedResponseImpl>
    implements _$$ProjectsPaginatedResponseImplCopyWith<$Res> {
  __$$ProjectsPaginatedResponseImplCopyWithImpl(
      _$ProjectsPaginatedResponseImpl _value,
      $Res Function(_$ProjectsPaginatedResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? perPage = null,
    Object? pageCount = null,
    Object? totalCount = null,
    Object? projects = freezed,
  }) {
    return _then(_$ProjectsPaginatedResponseImpl(
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
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectsPaginatedResponseImpl implements _ProjectsPaginatedResponse {
  const _$ProjectsPaginatedResponseImpl(
      {@JsonKey(name: "page") required this.page,
      @JsonKey(name: "per_page") required this.perPage,
      @JsonKey(name: "page_count") required this.pageCount,
      @JsonKey(name: "total_count") required this.totalCount,
      @JsonKey(name: "items") required final List<ProjectModel>? projects})
      : _projects = projects;

  factory _$ProjectsPaginatedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectsPaginatedResponseImplFromJson(json);

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
  final List<ProjectModel>? _projects;
  @override
  @JsonKey(name: "items")
  List<ProjectModel>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectsPaginatedResponse(page: $page, perPage: $perPage, pageCount: $pageCount, totalCount: $totalCount, projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectsPaginatedResponseImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage, pageCount,
      totalCount, const DeepCollectionEquality().hash(_projects));

  /// Create a copy of ProjectsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectsPaginatedResponseImplCopyWith<_$ProjectsPaginatedResponseImpl>
      get copyWith => __$$ProjectsPaginatedResponseImplCopyWithImpl<
          _$ProjectsPaginatedResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectsPaginatedResponseImplToJson(
      this,
    );
  }
}

abstract class _ProjectsPaginatedResponse implements ProjectsPaginatedResponse {
  const factory _ProjectsPaginatedResponse(
          {@JsonKey(name: "page") required final int page,
          @JsonKey(name: "per_page") required final int perPage,
          @JsonKey(name: "page_count") required final int pageCount,
          @JsonKey(name: "total_count") required final int totalCount,
          @JsonKey(name: "items")
          required final List<ProjectModel>? projects}) =
      _$ProjectsPaginatedResponseImpl;

  factory _ProjectsPaginatedResponse.fromJson(Map<String, dynamic> json) =
      _$ProjectsPaginatedResponseImpl.fromJson;

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
  List<ProjectModel>? get projects;

  /// Create a copy of ProjectsPaginatedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectsPaginatedResponseImplCopyWith<_$ProjectsPaginatedResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
