import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:top_movies/core/error/failures.dart';
import 'package:top_movies/core/utils/app_constance.dart';
import 'package:top_movies/modules/movies/data/models/movie_model.dart';

abstract class BaseRemoteDataSource {
  Future<Either<Failure, List<MovieModel>>> getNowPlayingMovies();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
  Future<Either<Failure, List<MovieModel>>> getPopularMovies();
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
}
