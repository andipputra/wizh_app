// core/errors/exceptions.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@Freezed(
  copyWith: true,
  makeCollectionsUnmodifiable: false,
  equal: true,
  addImplicitFinal: true,
)
sealed class AppException with _$AppException {
  const factory AppException.server({String? message}) = ServerException;
  const factory AppException.cache({String? message}) = CacheException;
  const factory AppException.network({String? message}) = NetworkException;
  const factory AppException.unknown({String? message}) = UnknownException;
}