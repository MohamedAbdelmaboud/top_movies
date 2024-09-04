import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class UpcomingMoviesLoading extends StatelessWidget {
  const UpcomingMoviesLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: LoadingAnimationWidget.beat(
          color: Colors.white,
          size: 50,
        ),
      ),
    );
  }
}
