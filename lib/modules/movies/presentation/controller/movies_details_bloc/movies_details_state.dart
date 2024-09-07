part of 'movies_details_bloc.dart';

class MoviesDetailsState extends Equatable {
  final MovieDetails? movieDetails;
  final List<Recommendation> recommendations;
  final String detailsErrorMessage;
  final String recommendationsErrorMessage;
  final MoviesStatus recommendationsStatus;
  final MoviesStatus detailsStatus;
  final List<Cast> cast;
  final MoviesStatus castStatus;
  final String castErrorMessage;
  const MoviesDetailsState({
    this.movieDetails,
    this.recommendations = const [],
    this.detailsErrorMessage = '',
    this.recommendationsErrorMessage = '',
    this.recommendationsStatus = MoviesStatus.loading,
    this.detailsStatus = MoviesStatus.loading,
    this.cast = const [],
    this.castErrorMessage = '',
    this.castStatus = MoviesStatus.loading,
  });

  @override
  List<Object?> get props => [
        movieDetails,
        recommendations,
        detailsErrorMessage,
        recommendationsErrorMessage,
        recommendationsStatus,
        detailsStatus,
        cast,
        castStatus,
        castErrorMessage,
      ];

  MoviesDetailsState copyWith({
    MovieDetails? movieDetails,
    List<Recommendation>? recommendations,
    String? detailsErrorMessage,
    String? recommendationsErrorMessage,
    MoviesStatus? recommendationsStatus,
    MoviesStatus? detailsStatus,
    List<Cast>? cast,
    MoviesStatus? castStatus,
    String? castErrorMessage,
  }) {
    return MoviesDetailsState(
      movieDetails: movieDetails ?? this.movieDetails,
      recommendations: recommendations ?? this.recommendations,
      detailsErrorMessage: detailsErrorMessage ?? this.detailsErrorMessage,
      recommendationsErrorMessage:
          recommendationsErrorMessage ?? this.recommendationsErrorMessage,
      recommendationsStatus:
          recommendationsStatus ?? this.recommendationsStatus,
      detailsStatus: detailsStatus ?? this.detailsStatus,
      cast: cast ?? this.cast,
      castStatus: castStatus ?? this.castStatus,
      castErrorMessage: castErrorMessage ?? this.castErrorMessage,
    );
  }
}
