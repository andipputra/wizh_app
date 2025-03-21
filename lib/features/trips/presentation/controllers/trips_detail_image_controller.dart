import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/presentation/controllers/trips_detail_controller.dart';
import 'package:wizh_trips/features/trips/presentation/state/trips_detail_image_state.dart';

part 'trips_detail_image_controller.g.dart';

@riverpod
class TripsDetailImageController extends _$TripsDetailImageController {
  @override
  TripsDetailImageState build(Trip trip) {
    final tripsDetailController = ref.watch(
      tripsDetailControllerProvider(trip),
    );

    return TripsDetailImageState(
      photos: tripsDetailController.value?.photos ?? [],
    );
  }

  void changeSelectedImage(int index) {
    state = state.copyWith(currentIndex: index);

    _checkShowArrows();
  }

  void nextImage() {
    if (state.currentIndex < state.photos.length - 1) {
      state = state.copyWith(currentIndex: state.currentIndex + 1);
    }

    _checkShowArrows();
  }

  void previousImage() {
    if (state.currentIndex > 0) {
      state = state.copyWith(currentIndex: state.currentIndex - 1);
    }

    _checkShowArrows();
  }

  void _checkShowArrows() {
    state = state.copyWith(
      showRightArrow: state.currentIndex < state.photos.length - 1,
      showLeftArrow: state.currentIndex > 0,
    );
  }
}
