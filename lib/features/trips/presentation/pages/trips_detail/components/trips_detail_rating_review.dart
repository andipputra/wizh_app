import 'package:flutter/material.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_review.dart';
import 'package:wizh_trips/features/trips/presentation/pages/trips_detail/components/trips_detail_review_items.dart';
import 'package:wizh_trips/widgets/five_stars.dart';

class TripsDetailRatingReview extends StatelessWidget {
  const TripsDetailRatingReview({
    super.key,
    required this.rating,
    required this.reviews,
  });

  final double rating;
  final List<TripReview> reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 16,
            children: [
              FiveStars(ratings: rating),
              Text('From ${reviews.length} reviews')
            ],
          ),
        ),
        AspectRatio(
          aspectRatio: 2,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            pageSnapping: false,
            itemBuilder:
                (context, index) =>
                    TripsDetailReviewItems(review: reviews[index]),
            itemCount: reviews.length,
          ),
        ),
      ],
    );
  }
}
