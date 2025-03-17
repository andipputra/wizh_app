import 'package:whiz_trips/core/errors/exceptions.dart';
import 'package:whiz_trips/core/errors/failure.dart';

Failure mapExceptionToFailure(AppException exception) {
  return switch (exception) {
    ServerException() => Failure.server(
      message: exception.message ?? 'Server error',
    ),
    CacheException() => Failure.cache(
      message: exception.message ?? 'Cache error',
    ),
    NetworkException() => Failure.network(
      message: exception.message ?? 'Network error',
    ),
    UnknownException() => Failure.unknown(
      message: exception.message ?? 'Unknown error',
    ),
  };
}
