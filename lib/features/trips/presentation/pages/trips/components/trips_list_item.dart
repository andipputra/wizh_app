import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whiz_trips/core/utils/extension.dart';
import 'package:whiz_trips/features/trips/domain/entities/trip.dart';
import 'package:whiz_trips/widgets/five_stars.dart';

class TripsListItem extends StatelessWidget {
  const TripsListItem({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              if (trip.photos.isNotEmpty)
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      trip.photos.first,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Skeletonizer(
                          child: ColoredBox(color: Colors.black),
                        );
                      },
                    ),
                  ),
                ),
              Text(
                trip.title,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              FiveStars(ratings: trip.rating, iconSize: 16, spacing: 0),
              Text(
                trip.price.toIdrFormat(),
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
