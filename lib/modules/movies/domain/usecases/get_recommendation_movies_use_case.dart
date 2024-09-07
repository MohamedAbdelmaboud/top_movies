import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/cast.dart';
import '../entites/recommendation.dart';
import '../repository/movie_repository.dart';

class GetRecommendationMoviesUseCase {
  final MovieRepository movieRepository;

  GetRecommendationMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, List<Recommendation>>> execute(int movieId) async {
    return await movieRepository.getRecommendationMovies(movieId);
  }
}

class GetCastUseCase {
  final MovieRepository movieRepository;

  GetCastUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Cast>>> execute(int movieId) async {
    return await movieRepository.getCast(movieId);
  }
}
