import '../../domain/entites/movie.dart';
import 'package:flutter/material.dart';
import 'search_item_over_view.dart';
import 'search_item_rate.dart';
import 'search_item_title.dart';
import 'search_view_body.dart';

class SearchItemRightSide extends StatelessWidget {
  const SearchItemRightSide({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SearchItemTitle(movie: movie),
              const Spacer(),
              SearchItemRate(movie: movie)
            ],
          ),
          SearchItemOverView(movie: movie),
        ],
      ),
    );
  }
}
