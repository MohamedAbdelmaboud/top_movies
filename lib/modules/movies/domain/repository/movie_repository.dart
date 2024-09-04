import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
  Future<Either<Failure, List<Movie>>> getUpcomingMovies();
}
