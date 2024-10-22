import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entites/cast.dart';
import '../../domain/entites/movie.dart';
import '../../domain/entites/movie_details.dart';
import '../../domain/entites/recommendation.dart';
import '../../domain/entites/trailer.dart';
import '../../domain/repository/movie_repository.dart';
import '../datasource/movie_remote_data_source.dart';

class MovieRepositoryImpl implements MovieRepository {
  final BaseRemoteDataSource remoteDataSource;

  MovieRepositoryImpl({
    required this.remoteDataSource,
  });
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() {
    final result = remoteDataSource.getNowPlayingMovies();
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

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies() {
    final result = remoteDataSource.getUpcomingMovies();
    return result;
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(int movieId) {
    final result = remoteDataSource.getMovieDetails(movieId);
    return result;
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendationMovies(
      int movieId) {
    final result = remoteDataSource.getRecommendations(movieId);
    return result;
  }

  @override
  Future<Either<Failure, List<Cast>>> getCast(int movieId) {
    final result = remoteDataSource.getCast(movieId);
    return result;
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String query) {
    final result = remoteDataSource.getSearchMovies(query);
    return result;
  }

  @override
  Future<Either<Failure, List<Trailer>>> getTrailer(int movieId) {
    final result = remoteDataSource.getTrailer(movieId);
    return result;
  }
}
