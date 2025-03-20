import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whiz_trips/features/trips/presentation/controllers/trips_detail_controller.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class TripsDetailPage extends ConsumerWidget {
  const TripsDetailPage({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(TripsDetailControllerProvider(trip));

    return Scaffold(appBar: AppBar(), body: ListView());
  }
}
