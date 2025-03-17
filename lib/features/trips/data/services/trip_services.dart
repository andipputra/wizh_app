import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:whiz_trips/core/errors/exceptions.dart';
import 'package:whiz_trips/features/trips/data/models/trip_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'trip_services.g.dart';

@riverpod
TripServices tripServices(Ref ref) => TripServices();

class TripServices {
  Future<List<TripModel>> allTrips() async {
    try {
      return await _loadFromLocal();
    } catch (e) {
      throw AppException.unknown(message: e.toString());
    }
  }

  Future<TripModel> tripDetails(int id) async {
    try {
      final listTripModel = await _loadFromLocal();

      final tripDetail = listTripModel.firstWhereOrNull(
        (element) => element.id == id,
      );

      if (tripDetail == null) {
        throw AppException.unknown(message: 'Trip not found');
      }

      return tripDetail;
    } catch (e) {
      throw AppException.unknown(message: e.toString());
    }
  }

  Future<List<TripModel>> _loadFromLocal() async {
    try {
      final listTripModel = <TripModel>[];

      final jsonString = await rootBundle.loadString('assets/data/user.json');
      final jsonMap = json.decode(jsonString) as List<Map<String, dynamic>>;

      if (jsonMap.isNotEmpty) {
        listTripModel.addAll(jsonMap.map((e) => TripModel.fromJson(e)));
      }

      return listTripModel;
    } catch (e) {
      throw AppException.unknown(message: e.toString());
    }
  }
}
