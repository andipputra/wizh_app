import 'package:flutter/material.dart';

class TripsDetailSummary extends StatelessWidget {
  const TripsDetailSummary({super.key, required this.summary});

  final String summary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(summary),
    );
  }
}
