part of 'movies_details_bloc.dart';

sealed class MoviesDetailsEvent extends Equatable {
  const MoviesDetailsEvent();

  @override
  List<Object> get props => [];
}

class GetMoviesDetailsEvent extends MoviesDetailsEvent {
  final int movieId;

  const GetMoviesDetailsEvent(this.movieId);

  @override
  List<Object> get props => [movieId];
}

class GetMoviesRecommendationsEvent extends MoviesDetailsEvent {
  final int movieId;

  const GetMoviesRecommendationsEvent(this.movieId);

  @override
  List<Object> get props => [movieId];
}
