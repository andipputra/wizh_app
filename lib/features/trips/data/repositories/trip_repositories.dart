import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiz_trips/core/errors/exceptions.dart';
import 'package:whiz_trips/core/errors/failure.dart';
import 'package:whiz_trips/features/trips/data/services/trip_services.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip_detail.dart';
import 'package:whiz_trips/features/trips/domain/repositories/trip_repositories.dart';

part 'trip_repositories.g.dart';

@riverpod
TripRepositories tripRepositories(Ref ref) =>
    TripRepositoriesImpl(ref.watch(tripServicesProvider));

class TripRepositoriesImpl implements TripRepositories {
  final TripServices services;

  TripRepositoriesImpl(this.services);

  @override
  Future<Either<Failure, List<Trip>>> getAllTrips() async {
    try {
      final allTrips = await services.allTrips();

      if (allTrips.isEmpty) {
        return Left(Failure.unknown(message: 'Trips empty'));
      }

      return Right(allTrips.map((e) => e.toTrip()).toList());
    } catch (e) {
      if (e is AppException) {
        return Left(e.mapExceptionToFailure());
      }
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TripDetail>> getTripsDetails(int id) async {
    try {
      final tripDetail = await services.tripDetails(id);

      return Right(tripDetail.toTripDetail());
    } catch (e) {
      if (e is AppException) {
        return Left(e.mapExceptionToFailure());
      }
      return Left(Failure.unknown(message: e.toString()));
    }
  }
}
