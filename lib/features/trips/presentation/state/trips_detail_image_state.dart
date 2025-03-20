import 'package:freezed_annotation/freezed_annotation.dart';

part 'trips_detail_image_state.freezed.dart';

@freezed
abstract class TripsDetailImageState with _$TripsDetailImageState {
  const TripsDetailImageState._();

  factory TripsDetailImageState({
    @Default(0) int currentIndex,
    required List<String> photos,
    @Default(true) showRightArrow,
    @Default(false) showLeftArrow,
  }) = _TripCarouselState;
}
