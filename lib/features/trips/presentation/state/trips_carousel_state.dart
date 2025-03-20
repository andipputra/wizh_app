import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';

part 'trips_carousel_state.freezed.dart';

@freezed
abstract class TripsCarouselState with _$TripsCarouselState {
  const TripsCarouselState._();

  factory TripsCarouselState({
    @Default(0) int currentIndex,
    required List<Trip> trips,
  }) = _TripCarouselState;
}
