import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String backdropPath; //image url
  final List<int> genreIds;
  final int id;
  final String overview;
  final String posterPath;
  final String releaseDate;
  final String title;
  final double voteAverage;
  final int voteCount;

  const Movie({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });
  // factory constructor
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
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

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        overview,
        posterPath,
        releaseDate,
        title,
        voteAverage,
        voteCount,
      ];

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Movie &&
  //       other.backdropPath == backdropPath &&
  //       other.genreIds == genreIds &&
  //       other.id == id &&
  //       other.overview == overview &&
  //       other.posterPath == posterPath &&
  //       other.releaseDate == releaseDate &&
  //       other.title == title &&
  //       other.voteAverage == voteAverage &&
  //       other.voteCount == voteCount;
  // }

  // @override
  // int get hashCode {
  //   return backdropPath.hashCode ^
  //       genreIds.hashCode ^
  //       id.hashCode ^
  //       overview.hashCode ^
  //       posterPath.hashCode ^
  //       releaseDate.hashCode ^
  //       title.hashCode ^
  //       voteAverage.hashCode ^
  //       voteCount.hashCode;
  // }
}
