// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'UserEntity.freezed.dart';
part 'UserEntity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    String? name,
    required String id,
    String? token,
    @JsonKey(name: 'urlToImage') String? imageUrl,
    String? publishedAt,
    String? content,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}