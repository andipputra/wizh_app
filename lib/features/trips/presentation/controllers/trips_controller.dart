
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wizh_trips/core/errors/failure.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/domain/usecase/get_all_trips.dart';

part 'trips_controller.g.dart';

@riverpod
class TripsController extends _$TripsController {
  @override
  Future<List<Trip>?> build() async {
    state = const AsyncLoading();

    final allTripsResponse = await _getAllTrips();

    return allTripsResponse.fold((l) {
      state = AsyncError(l.message ?? 'Unknown error', StackTrace.current);

      return null;
    }, (r) => r);
  }

  Future<Either<Failure, List<Trip>>> _getAllTrips() =>
      ref.read(getAllTripsProvider).call(null);
}
