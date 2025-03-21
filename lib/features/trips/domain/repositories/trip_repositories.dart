import 'package:fpdart/fpdart.dart';
import 'package:wizh_trips/core/errors/failure.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_detail.dart';

abstract class TripRepositories {
  Future<Either<Failure, List<Trip>>> getAllTrips();
  Future<Either<Failure, TripDetail>> getTripsDetails(int id);
}