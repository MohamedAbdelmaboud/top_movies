import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie.dart';
import 'package:flutter/material.dart';

class SearchItemTitle extends StatelessWidget {
  const SearchItemTitle({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .5,
      ),
      child: Text(
        movie.title,
        style: AppStyles.semiBold13,
        maxLines: 1,
        overflow: TextOverflow.ellipsis, // Ensures ellipsis when overflowing
      ),
    );
  }
}
