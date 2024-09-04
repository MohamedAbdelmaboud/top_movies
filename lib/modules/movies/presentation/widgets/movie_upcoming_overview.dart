import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class MovieUpcomingOverview extends StatelessWidget {
  const MovieUpcomingOverview({
    super.key,
    required this.overview,
  });
  final String overview;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .6,
      ),
      child: Text(
        overview,
        style: AppStyles.medium12,
        overflow: TextOverflow.ellipsis, // Ensures ellipsis when overflowing
        maxLines: 2, // Limits the text to two lines
        softWrap: true, // Enables text wrapping
      ),
    );
  }
}
