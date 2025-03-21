import 'package:flutter/material.dart';
import 'package:wizh_trips/core/utils/extension.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip_review.dart';

class TripsDetailReviewItems extends StatelessWidget {
  const TripsDetailReviewItems({super.key, required this.review});

  final TripReview review;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              review.reviewerName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              review.comment,
              style: Theme.of(context).textTheme.bodyMedium,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 32,
                  width: 32,
                  child: Stack(
                    children: [
                      Center(
                        child: CircularProgressIndicator(
                          value: review.rating / 5,
                          strokeWidth: 2,
                          color: Colors.amber,
                          // valueColor: AlwaysStoppedAnimation(Colors.black),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Center(
                        child: Text(
                          review.rating.toString(),
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  review.date.toDateShow(),
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
