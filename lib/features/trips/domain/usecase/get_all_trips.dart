import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiz_trips/core/errors/failure.dart';
import 'package:whiz_trips/core/usecase/usecase.dart';
import 'package:whiz_trips/features/trips/data/repositories/trip_repositories.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:whiz_trips/features/trips/domain/repositories/trip_repositories.dart';

part 'get_all_trips.g.dart';

@riverpod
GetAllTrips getAllTrips(Ref ref) =>
    GetAllTrips(ref.watch(tripRepositoriesProvider));

class GetAllTrips implements UseCase<Either<Failure, List<Trip>>, void> {
  final TripRepositories tripRepositories;

  const GetAllTrips(this.tripRepositories);

  @override
  Future<Either<Failure, List<Trip>>> call(void params) =>
      tripRepositories.getAllTrips();
}
