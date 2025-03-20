import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:whiz_trips/features/trips/presentation/controllers/trips_controller.dart';
import 'package:whiz_trips/features/trips/presentation/state/trips_carousel_state.dart';

part 'trips_carousel_controller.g.dart';

@riverpod
class TripsCarouselController extends _$TripsCarouselController {
  @override
  TripsCarouselState build() {
    final tripsController = ref.watch(tripsControllerProvider);

    return TripsCarouselState(trips: tripsController.value ?? <Trip>[]);
  }

  void onIndexChange(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
