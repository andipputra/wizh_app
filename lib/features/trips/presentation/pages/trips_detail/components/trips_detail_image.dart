import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wizh_trips/features/trips/domain/entities/trip.dart';
import 'package:wizh_trips/features/trips/presentation/controllers/trips_detail_image_controller.dart';
import 'package:wizh_trips/widgets/image_from_network.dart';

class TripsDetailImage extends ConsumerWidget {
  const TripsDetailImage({super.key, required this.trip});

  final Trip trip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tripsDetailImageControllerProvider(trip));

    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              children: [
                ImageFromNetwork(
                  imageUrl:
                      controller.photos.isNotEmpty
                          ? controller.photos[controller.currentIndex]
                          : '',
                  borderRadius: BorderRadius.circular(16),
                ),

                // button right
                if (controller.showRightArrow)
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed:
                          () =>
                              ref
                                  .read(
                                    tripsDetailImageControllerProvider(
                                      trip,
                                    ).notifier,
                                  )
                                  .nextImage(),
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),

                // button left
                if (controller.showLeftArrow)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed:
                          () =>
                              ref
                                  .read(
                                    tripsDetailImageControllerProvider(
                                      trip,
                                    ).notifier,
                                  )
                                  .previousImage(),
                      icon: Icon(
                        Icons.chevron_left_rounded,
                        color: Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder:
                (context, index) => InkWell(
                  onTap:
                      () => ref
                          .read(
                            tripsDetailImageControllerProvider(trip).notifier,
                          )
                          .changeSelectedImage(index),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ImageFromNetwork(
                      imageUrl: controller.photos[index],
                      border:
                          controller.currentIndex == index
                              ? Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 4,
                              )
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: controller.photos.length,
          ),
        ),
      ],
    );
  }
}
