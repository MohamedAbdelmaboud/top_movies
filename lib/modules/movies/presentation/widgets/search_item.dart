import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entites/movie.dart';
import 'search_item_image.dart';
import 'search_item_right_side.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SearchItemImage(movie: movie),
        const Gap(12),
        SearchItemRightSide(movie: movie)
      ],
    );
  }
}
