import 'package:dartz/dartz.dart';
import 'package:top_movies/core/error/failures.dart';
import 'package:top_movies/modules/movies/domain/entites/movie.dart';
import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../datasource/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final BaseRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await remoteDataSource.getNowPlayingMovies();
    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() {
    final result = remoteDataSource.getPopularMovies();
    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() {
    final result = remoteDataSource.getTopRatedMovies();
    return result;
  }
}
