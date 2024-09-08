import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../controller/movies_bloc/movies_bloc.dart';
import '../controller/movies_details_bloc/movies_details_bloc.dart';
import '../widgets/movie_details_view_body.dart';

class MoviesDetailView extends StatelessWidget {
  const MoviesDetailView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MoviesDetailsBloc, MoviesDetailsState>(
        builder: (context, state) {
          if (state.detailsStatus == MoviesStatus.loading||
              state.castStatus == MoviesStatus.loading) {
            return Center(
              child: LoadingAnimationWidget.discreteCircle(
                color: Colors.white,
                size: 50,
              ),
            );
          } else if (state.detailsStatus == MoviesStatus.error) {
            return Center(
              child: Text(state.detailsErrorMessage),
            );
          }

          return MovieDetailsViewBody(
            movie: state.movieDetails!,
            recommendations: state.recommendations,
            castMembers: state.cast,
          );
        },
      ),
    );
  }
}
