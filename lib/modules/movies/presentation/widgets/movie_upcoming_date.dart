import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/app_styles.dart';

class MovieUpcomingDate extends StatelessWidget {
  const MovieUpcomingDate({
    super.key,
    required this.releaseDate,
  });
  final String releaseDate;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
      child: Text(
        DateFormat.yMMM().format(
          DateTime.parse(
            releaseDate,
          ),
        ),
        style: AppStyles.bold9,
      ),
    );
  }
}
