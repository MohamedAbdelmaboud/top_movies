part of 'movies_details_bloc.dart';

class MoviesDetailsState extends Equatable {
  final MovieDetails? movieDetails;
  final List<Recommendation> recommendations;
  final String detailsErrorMessage;
  final String recommendationsErrorMessage;
  final MoviesStatus recommendationsStatus;
  final MoviesStatus detailsStatus;

  const MoviesDetailsState({
    this.movieDetails,
    this.recommendations = const [],
    this.detailsErrorMessage = '',
    this.recommendationsErrorMessage = '',
    this.recommendationsStatus = MoviesStatus.loading,
    this.detailsStatus = MoviesStatus.loading,
  });

  @override
  List<Object?> get props => [
        movieDetails,
        recommendations,
        detailsErrorMessage,
        recommendationsErrorMessage,
        recommendationsStatus,
        detailsStatus,
      ];
  // copyWith method
  MoviesDetailsState copyWith({
    MovieDetails? movieDetails,
    List<Recommendation>? recommendations,
    String? detailsErrorMessage,
    String? recommendationsErrorMessage,
    MoviesStatus? recommendationsStatus,
    MoviesStatus? detailsStatus,
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
    );
  }
}
