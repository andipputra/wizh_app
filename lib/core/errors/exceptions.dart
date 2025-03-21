// core/errors/exceptions.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wizh_trips/core/errors/failure.dart';

part 'exceptions.freezed.dart';

@freezed
sealed class AppException with _$AppException {
  const AppException._();

  const factory AppException.server({String? message}) = ServerException;
  const factory AppException.cache({String? message}) = CacheException;
  const factory AppException.network({String? message}) = NetworkException;
  const factory AppException.unknown({String? message}) = UnknownException;

  Failure mapExceptionToFailure() {
    return switch (this) {
      ServerException() => Failure.server(message: message ?? 'Server error'),
      CacheException() => Failure.cache(message: message ?? 'Cache error'),
      NetworkException() => Failure.network(
        message: message ?? 'Network error',
      ),
      UnknownException() => Failure.unknown(
        message: message ?? 'Unknown error',
      ),
    };
  }
}
