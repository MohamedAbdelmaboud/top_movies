part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  const MoviesState({
    this.movies = const [],
    this.errorMessage = '',
    this.status = MoviesStatus.loading,
  });

  final List<Movie> movies;
  final String errorMessage;
  final MoviesStatus status;

  @override
  List<Object> get props => [];
}

enum MoviesStatus { loading, loaded, error }
