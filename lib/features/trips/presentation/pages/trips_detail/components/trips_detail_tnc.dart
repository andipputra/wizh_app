import 'package:flutter/material.dart';

class TripsDetailTnc extends StatelessWidget {
  const TripsDetailTnc({super.key, required this.tnc});

  final String tnc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(tnc, style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}
