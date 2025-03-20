import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageFromNetwork extends StatelessWidget {
  const ImageFromNetwork({
    super.key,
    required this.imageUrl,
    this.borderRadius = BorderRadius.zero,
    this.border,
  });

  final String imageUrl;
  final BorderRadius borderRadius;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder:
            (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                border: border,
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
        placeholder:
            (context, url) =>
                Skeletonizer(child: ColoredBox(color: Colors.black)),
        errorWidget:
            (context, url, error) =>
                Skeletonizer(child: ColoredBox(color: Colors.black)),
        fit: BoxFit.cover,
      ),
    );
  }
}
