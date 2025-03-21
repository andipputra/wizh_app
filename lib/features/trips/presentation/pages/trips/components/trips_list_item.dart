import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:wizh_trips/config/routers/app_routes.gr.dart';
import 'package:wizh_trips/core/utils/extension.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/widgets/five_stars.dart';

class TripsListItem extends StatelessWidget {
  const TripsListItem({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Skeleton.leaf(
      child: InkWell(
        onTap: () => context.pushRoute(TripsDetailRoute(trip: trip)),
        child: Card(
          elevation: 2,
          color: Colors.grey.shade100,
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
                      child: CachedNetworkImage(
                        imageUrl: trip.photos.first,
                        placeholder:
                            (context, url) => Skeletonizer(
                              child: ColoredBox(color: Colors.black),
                            ),
                        errorWidget:
                            (context, url, error) => Skeletonizer(
                              child: ColoredBox(color: Colors.black),
                            ),
                        fit: BoxFit.cover,
                      ),

                      // Image.network(
                      //   trip.photos.first,
                      //   fit: BoxFit.cover,
                      //   loadingBuilder: (context, child, loadingProgress) {
                      //     if (loadingProgress == null) return child;
                      //     return Skeletonizer(
                      //       child: ColoredBox(color: Colors.black),
                      //     );
                      //   },
                      // ),
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
