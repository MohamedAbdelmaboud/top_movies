import 'package:flutter/material.dart';

import '../../../../core/test/dummy_details.dart';
import '../widgets/movie_details_view_body.dart';

class MoviesDetailView extends StatelessWidget {
  final int id;

  const MoviesDetailView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MovieDetailsViewBody(
        movie: movieDetailDummy,
        recommendations: recommendationDummy,
      ),
    );
  }
}
