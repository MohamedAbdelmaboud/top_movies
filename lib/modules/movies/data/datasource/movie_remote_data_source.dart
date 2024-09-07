import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/cast.dart';
import '../models/cast_model.dart';
import '../models/movie_details_model.dart';
import '../models/movie_model.dart';
import '../models/recommendation_model.dart';

abstract class BaseRemoteDataSource {
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
  Future<Either<Failure, List<MovieModel>>> getPopularMovies();
  Future<Either<Failure, List<MovieModel>>> getUpcomingMovies();
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(int movieId);
  Future<Either<Failure, List<RecommendationModel>>> getRecommendations(
    int movieId,
  );
  Future<Either<Failure, List<Cast>>> getCast(int movieId);
}

class MovieRemoteDataSource implements BaseRemoteDataSource {
  final Dio dio;

  MovieRemoteDataSource({
    required this.dio,
  });

  @override
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies() async {
    try {
      Response response = await dio.get(
        nowPlayingMovies,
      );
      List<dynamic> json = response.data['results'];
      List<MovieModel> movies = List.generate(
        json.length,
        (index) => MovieModel.fromJson(json[index]),
      );
      return right(movies);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() async {
    try {
      Response response = await dio.get(
        popularMovies,
      );
      List<dynamic> json = response.data['results'];
      List<MovieModel> movies = List.generate(
        json.length,
        (index) => MovieModel.fromJson(json[index]),
      );
      return right(movies);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() async {
    try {
      Response response = await dio.get(
        topRatedMovies,
      );
      List<dynamic> json = response.data['results'];
      List<MovieModel> movies = List.generate(
        json.length,
        (index) => MovieModel.fromJson(json[index]),
      );
      return right(movies);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getUpcomingMovies() async {
    try {
      Response response = await dio.get(
        upcomingMovies,
      );
      List<dynamic> json = response.data['results'];
      List<MovieModel> movies = List.generate(
        json.length,
        (index) => MovieModel.fromJson(json[index]),
      );
      return right(movies);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
    int movieId,
  ) async {
    try {
      Response response = await dio.get(
        getMovieDetailsPath(movieId),
      );
      MovieDetailsModel movie = MovieDetailsModel.fromJson(response.data);

      return right(movie);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecommendationModel>>> getRecommendations(
      int movieId) async {
    try {
      Response response = await dio.get(
        getMoviesRecommendationsPath(movieId),
      );
      List<dynamic> json = response.data['results'];
      List<RecommendationModel> recommendationMovies = List.generate(
        json.length,
        (index) => RecommendationModel.fromJson(json[index]),
      );

      return right(recommendationMovies);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, List<Cast>>> getCast(int movieId) async {
    try {
      Response response = await dio.get(
        getCastPath(movieId),
      );
      List<dynamic> json = response.data['cast'];
      List<CastModel> cast = List.generate(
        json.length,
        (index) => CastModel.fromJson(json[index]),
      );

      return right(cast);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}
