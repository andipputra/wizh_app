import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:wizh_trips/config/routers/app_routes.gr.dart';
import 'package:wizh_trips/features/trips/presentation/controllers/trips_carousel_controller.dart';
import 'package:wizh_trips/features/trips/presentation/controllers/trips_controller.dart';

class TripsCarousel extends ConsumerWidget {
  const TripsCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsController = ref.watch(tripsControllerProvider);
    final tripsCarouselController = ref.watch(tripsCarouselControllerProvider);

    final currentIndex = tripsCarouselController.currentIndex;

    if (tripsController.isLoading) {
      return Skeletonizer(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ColoredBox(color: Colors.black),
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            itemBuilder: (context, index) {
              final currentTrips = tripsCarouselController.trips[index];

              return InkWell(
                onTap: () => context.pushRoute(TripsDetailRoute(trip: currentTrips)),
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(currentTrips.photos.first),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withAlpha(100),
                          Colors.white.withAlpha(90),
                          Colors.white.withAlpha(80),
                          Colors.white.withAlpha(70),
                        ],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Text(
                      currentTrips.title,
                      style: TextTheme.of(
                        context,
                      ).labelLarge?.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            },
            itemCount: tripsCarouselController.trips.length,
            onPageChanged:
                ref
                    .read(tripsCarouselControllerProvider.notifier)
                    .onIndexChange,
          ),
        ),
        // Dots Indicators
        Row(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < tripsCarouselController.trips.length; i++)
              AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: 8,
                width: currentIndex == i ? 24 : 8,
                decoration: BoxDecoration(
                  color: currentIndex == i ? Colors.black : Colors.grey,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
