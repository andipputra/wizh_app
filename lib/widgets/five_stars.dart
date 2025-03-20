import 'package:flutter/material.dart';

class FiveStars extends StatelessWidget {
  const FiveStars({
    super.key,
    required this.ratings,
    this.iconSize = 24,
    this.spacing = 2,
  });

  final double iconSize;
  final double ratings;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children:
          List.generate(
              5,
              (index) => Icon(
                index + 1 < ratings
                    ? Icons.star_rounded
                    : Icons.star_border_rounded,
                color: Colors.amber,
                size: iconSize,
              ),
            )
            ..add(SizedBox(width: 4))
            ..add(Text('$ratings')),
    );
  }
}
