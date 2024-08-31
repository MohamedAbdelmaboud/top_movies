import 'package:top_movies/modules/movies/domain/entites/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.backdropPath,
    required super.genreIds,
    required super.id,
    required super.overview,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.voteAverage,
    required super.voteCount,
  });
  //  handle json data from api response
  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids']),
      id: json['id'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble(),
      voteCount: json['vote_count'],
    );
  }
  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'overview': overview,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
