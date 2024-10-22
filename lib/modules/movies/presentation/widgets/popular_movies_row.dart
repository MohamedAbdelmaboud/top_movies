import 'package:flutter/material.dart';

import 'see_more_widget.dart';
import 'tilte_text_widet.dart';

class PopularMoviesRow extends StatelessWidget {
  const PopularMoviesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TilteTextWidet(
            title: 'Popular',
          ),
          SeeMoreWidget(),
        ],
      ),
    );
  }
}
