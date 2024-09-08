import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie.dart';
import 'package:flutter/material.dart';

class SearchItemOverView extends StatelessWidget {
  const SearchItemOverView({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .6,
      ),
      child: Text(
        movie.overview,
        style: AppStyles.medium12,
        overflow: TextOverflow.ellipsis, // Ensures ellipsis when overflowing
        maxLines: 2, // Limits the text to two lines
        softWrap: true, // Enables text wrapping
      ),
    );
  }
}
