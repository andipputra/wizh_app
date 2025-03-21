import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wizh_trips/core/errors/failure.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_detail.dart';
import 'package:wizh_trips/features/trips/domain/usecase/get_trip_detail.dart';

part 'trips_detail_controller.g.dart';

@riverpod
class TripsDetailController extends _$TripsDetailController {
  @override
  Future<TripDetail?> build(Trip tripData) async {
    final tripDetailResponse = await _getTripDetails(tripData);

    return tripDetailResponse.fold((l) {
      state = AsyncError(l.message ?? 'Unknown error', StackTrace.current);
      return null;
    }, (r) => r);
  }

  Future<Either<Failure, TripDetail>> _getTripDetails(Trip tripData) =>
      ref.read(getTripDetailProvider).call(tripData.id);
}
