import 'package:whiz_trips/features/trips/domain/enum/trip_type.dart';

class Trip {
  final int id;
  final String title;
  final double price;
  final double rating;
  final TripType tripType;
  final List<String> photos;

  Trip({
    required this.id,
    required this.title,
    required this.price,
    required this.rating,
    required this.tripType,
    required this.photos,
  });
}
