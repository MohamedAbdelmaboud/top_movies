import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class MovieUpcomingOverview extends StatelessWidget {
  const MovieUpcomingOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .6,
      ),
      child: Text(
        'Doctor Strange, with the help of mystical allies both old and new, traverses the mind-bending and dangerous alternate realities of the Multiverse to confront a mysterious new adversary.',
        style: AppStyles.medium12,
        overflow: TextOverflow.ellipsis, // Ensures ellipsis when overflowing
        maxLines: 2, // Limits the text to two lines
        softWrap: true, // Enables text wrapping
      ),
    );
  }
}
