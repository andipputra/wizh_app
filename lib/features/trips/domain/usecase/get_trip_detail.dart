import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wizh_trips/core/errors/failure.dart';
import 'package:wizh_trips/core/usecase/usecase.dart';
import 'package:wizh_trips/features/trips/data/repositories/trip_repositories.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_detail.dart';
import 'package:wizh_trips/features/trips/domain/repositories/trip_repositories.dart';

part 'get_trip_detail.g.dart';

@riverpod
GetTripDetail getTripDetail(Ref ref) =>
    GetTripDetail(ref.watch(tripRepositoriesProvider));

class GetTripDetail implements UseCase<Either<Failure, TripDetail>, int> {
  final TripRepositories tripRepositories;

  const GetTripDetail(this.tripRepositories);

  @override
  Future<Either<Failure, TripDetail>> call(int params) =>
      tripRepositories.getTripsDetails(params);
}
