// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:whiz_trips/features/trips/domain/entities/trip.dart' as _i5;
import 'package:whiz_trips/features/trips/presentation/pages/trips/trips_page.dart'
    as _i2;
import 'package:whiz_trips/features/trips/presentation/pages/trips_detail/trips_detail_page.dart'
    as _i1;

/// generated route for
/// [_i1.TripsDetailPage]
class TripsDetailRoute extends _i3.PageRouteInfo<TripsDetailRouteArgs> {
  TripsDetailRoute({
    _i4.Key? key,
    required _i5.Trip trip,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         TripsDetailRoute.name,
         args: TripsDetailRouteArgs(key: key, trip: trip),
         initialChildren: children,
       );

  static const String name = 'TripsDetailRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TripsDetailRouteArgs>();
      return _i1.TripsDetailPage(key: args.key, trip: args.trip);
    },
  );
}

class TripsDetailRouteArgs {
  const TripsDetailRouteArgs({this.key, required this.trip});

  final _i4.Key? key;

  final _i5.Trip trip;

  @override
  String toString() {
    return 'TripsDetailRouteArgs{key: $key, trip: $trip}';
  }
}

/// generated route for
/// [_i2.TripsPage]
class TripsRoute extends _i3.PageRouteInfo<void> {
  const TripsRoute({List<_i3.PageRouteInfo>? children})
    : super(TripsRoute.name, initialChildren: children);

  static const String name = 'TripsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.TripsPage();
    },
  );
}
