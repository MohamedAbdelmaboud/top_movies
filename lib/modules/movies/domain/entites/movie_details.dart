import 'package:equatable/equatable.dart';

import 'genre.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final int budget;
  final List<Genre> genres;
  final int id;

  final String overview;

  final String posterPath;

  final String releaseDate;

  final int runtime;
  final String status;

  final String tagline;

  final String title;

  final double voteAverage;

  final int voteCount;

  const MovieDetails({
    required this.backdropPath,
    required this.budget,
    required this.genres,
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.runtime,
    required this.status,
    required this.tagline,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
        backdropPath,
        budget,
        genres,
        id,
        overview,
        posterPath,
        releaseDate,
        runtime,
        status,
        tagline,
        title,
        voteAverage,
        voteCount,
      ];
}
