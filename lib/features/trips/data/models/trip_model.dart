import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_detail.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_review.dart';
import 'package:wizh_trips/features/trips/domain/enum/trip_type.dart';

part 'trip_model.freezed.dart';
part 'trip_model.g.dart';

@freezed
abstract class TripModel with _$TripModel {
  const TripModel._();

  const factory TripModel({
    required int id,
    required String title,
    required double price,
    required double rating,
    required TripType tripType,
    String? summary,
    @Default(<String>[]) List<String> photos,
    @Default(<String>[]) List<String> includes,
    @Default(<String>[]) List<String> excludes,
    String? termsAndConditions,
    int? totalPax,
    @Default(<Review>[]) List<Review> reviews,
  }) = _TripModel;

  factory TripModel.fromJson(Map<String, dynamic> json) =>
      _$TripModelFromJson(json);

  Trip toTrip() => Trip(
    id: id,
    title: title,
    price: price,
    rating: rating,
    tripType: tripType,
    photos: photos,
  );

  TripDetail toTripDetail() => TripDetail(
    id: id,
    title: title,
    price: price,
    rating: rating,
    tripType: tripType,
    summary: summary,
    photos: photos,
    includes: includes,
    excludes: excludes,
    termsAndConditions: termsAndConditions,
    totalPax: totalPax,
    reviews: reviews.map((e) => e.toTripReview()).toList(),
  );
}

@freezed
abstract class Review with _$Review {
  const Review._();

  const factory Review({
    required String reviewerName,
    required double rating,
    required String comment,
    required DateTime date,
  }) = _Review;

  TripReview toTripReview() => TripReview(
    reviewerName: reviewerName,
    rating: rating,
    comment: comment,
    date: date,
  );

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
