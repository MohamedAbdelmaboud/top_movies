import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/cast.dart';
import '../entites/movie.dart';
import '../entites/movie_details.dart';
import '../entites/recommendation.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> getUpcomingMovies();
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId);
  Future<Either<Failure, List<Recommendation>>> getRecommendationMovies(
    int movieId,
  );
// get cast
  Future<Either<Failure, List<Cast>>> getCast(int movieId);
}
