import '../../../../core/error/failures.dart';
import '../entites/recommendation.dart';
import '../repository/movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetRecommendationMoviesUseCase {
  final MovieRepository movieRepository;

  GetRecommendationMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, List<Recommendation>>> excute(int movieId) async {
    return await movieRepository.getRecommendationMovies(movieId);
  }
}
