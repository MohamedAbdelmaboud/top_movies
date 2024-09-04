import 'package:flutter/material.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_item.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: MovieUpcomingItem(),
      ),
    );
  }
}
