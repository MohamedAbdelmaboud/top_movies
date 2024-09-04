import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class MovieUpcomingRate extends StatelessWidget {
  const MovieUpcomingRate({
    super.key,
    required this.voteAvg,
  });
  final double voteAvg;
  @override
  Widget build(BuildContext context) {
    return Text(
      voteAvg.toStringAsFixed(1),
      style: AppStyles.bold12,
    );
  }
}
