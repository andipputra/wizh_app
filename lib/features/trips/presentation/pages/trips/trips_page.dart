import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/domain/enum/trip_type.dart';
import 'package:wizh_trips/features/trips/presentation/controllers/trips_controller.dart';
import 'package:wizh_trips/features/trips/presentation/pages/trips/components/trips_carousel.dart';
import 'package:wizh_trips/features/trips/presentation/pages/trips/components/trips_list.dart';

@RoutePage()
class TripsPage extends ConsumerWidget {
  const TripsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tripsControllerProvider);

    final tripList =
        controller.isLoading
            ? List.generate(
              5,
              (index) => Trip(
                id: index,
                photos: [],
                price: 0,
                rating: 0,
                title: 'title',
                tripType: TripType.open,
              ),
            )
            : controller.value ?? [];

    log('[Putra] trips list => ${tripList.length}');

    return Scaffold(
      body: SafeArea(
        child: switch (controller) {
          AsyncError(:final error) => Text('error: $error'),
          _ => ListView(
            shrinkWrap: true,
            children: [
              TripsCarousel(),
              TripsList(isLoading: controller.isLoading, trips: tripList),
            ],
          ),
        },
      ),
    );
  }
}
