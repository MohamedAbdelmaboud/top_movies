part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  const MoviesState({
    this.nowPlayingMovies = const [],
    this.popularMovies = const [],
    this.topRatedMovies = const [],
    this.nowPlayingErrorMessage = '',
    this.popularErrorMessage = '',
    this.topRatedErrorMessage = '',
    this.nowPlayingstatus = MoviesStatus.loading,
    this.popularStatus = MoviesStatus.loading,
    this.topRatedStatus = MoviesStatus.loading,
  });

  final List<Movie> nowPlayingMovies;
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;
  final String nowPlayingErrorMessage;
  final String popularErrorMessage;
  final String topRatedErrorMessage;
  final MoviesStatus nowPlayingstatus;
  final MoviesStatus popularStatus;
  final MoviesStatus topRatedStatus;

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    List<Movie>? popularMovies,
    List<Movie>? topRatedMovies,
    String? nowPlayingErrorMessage,
    String? popularErrorMessage,
    String? topRatedErrorMessage,
    MoviesStatus? nowPlayingstatus,
    MoviesStatus? popularStatus,
    MoviesStatus? topRatedStatus,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      popularMovies: popularMovies ?? this.popularMovies,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      nowPlayingErrorMessage:
          nowPlayingErrorMessage ?? this.nowPlayingErrorMessage,
      popularErrorMessage: popularErrorMessage ?? this.popularErrorMessage,
      topRatedErrorMessage: topRatedErrorMessage ?? this.topRatedErrorMessage,
      nowPlayingstatus: nowPlayingstatus ?? this.nowPlayingstatus,
      popularStatus: popularStatus ?? this.popularStatus,
      topRatedStatus: topRatedStatus ?? this.topRatedStatus,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        popularMovies,
        topRatedMovies,
        nowPlayingErrorMessage,
        popularErrorMessage,
        topRatedErrorMessage,
        nowPlayingstatus,
        popularStatus,
        topRatedStatus,
      ];
}

enum MoviesStatus { loading, loaded, error }
