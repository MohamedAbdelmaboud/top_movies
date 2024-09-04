import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/upcoming_movies_sliver_list.dart';
import 'package:top_movies/modules/movies/presentation/widgets/upcoming_view_sliver_app_bar.dart';

class UpcomingView extends StatelessWidget {
  const UpcomingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //1
      body: CustomScrollView(
        slivers: <Widget>[
          UpcomingViewSliverAppBar(),
          SliverToBoxAdapter(
            child: Gap(10),
          ),
          UpcomingMoviesSliverList(),
          SliverToBoxAdapter(
            child: Gap(20),
          ),
        ],
      ),
    );
  }
}
