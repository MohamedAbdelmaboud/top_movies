import '../../domain/entites/movie_details.dart';
import 'genre_model.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.budget,
    required super.genres,
    required super.id,
    required super.overview,
    required super.posterPath,
    required super.releaseDate,
    required super.runtime,
    required super.status,
    required super.tagline,
    required super.title,
    required super.voteAverage,
    required super.voteCount,
  });
  // factory method
  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailsModel(
      backdropPath: json['backdrop_path'],
      budget: json['budget'],
      genres: List.from(json['genres'])
          .map(
            (genre) => GenreModel.fromJson(genre),
          )
          .toList(),
      id: json['id'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      runtime: json['runtime'],
      status: json['status'],
      tagline: json['tagline'],
      title: json['title'],
      voteAverage: json['vote_average'],
      voteCount: json['vote_count'],
    );
  }
}
