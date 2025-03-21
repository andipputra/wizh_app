import 'package:wizh_trips/features/trips/domain/entities/trip_review.dart';
import 'package:wizh_trips/features/trips/domain/enum/trip_type.dart';

class TripDetail {
  final int id;
  final String title;
  final double price;
  final double rating;
  final TripType tripType;
  final String? summary;
  final List<String> photos;
  final List<String> includes;
  final List<String> excludes;
  final String? termsAndConditions;
  final int? totalPax;
  final List<TripReview> reviews;

  const TripDetail({
    required this.id,
    required this.title,
    required this.price,
    required this.rating,
    required this.tripType,
    this.summary,
    required this.photos,
    required this.includes,
    required this.excludes,
    this.termsAndConditions,
    this.totalPax,
    required this.reviews,
  });
}
