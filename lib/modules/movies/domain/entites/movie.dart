import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String? backdropPath; //image url
  final List<int> genreIds;
  final int id;
  final String overview;
  final String? posterPath;
  final String releaseDate;
  final String title;
  final double voteAverage;
  final int voteCount;

  const Movie({
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.overview,
    this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

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
