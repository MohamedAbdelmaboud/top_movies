import 'package:dartz/dartz.dart';
import 'package:top_movies/modules/movies/domain/entites/movie.dart';

import '../../../../core/error/failures.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
