import 'package:flutter/material.dart';
import 'package:wizh_trips/core/utils/extension.dart';

class TripsDetailPriceAndPax extends StatelessWidget {
  const TripsDetailPriceAndPax({
    super.key,
    required this.price,
    required this.totalPax,
  });

  final double price;
  final int totalPax;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price.toIdrFormat(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'per person',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: 24, child: VerticalDivider()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Available Pax',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  totalPax.toString(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
