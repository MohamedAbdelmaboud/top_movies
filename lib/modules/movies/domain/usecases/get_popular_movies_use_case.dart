import 'package:dartz/dartz.dart';
import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';

class GetPopularMoviesUseCase {
  final MovieRepository movieRepository;

  GetPopularMoviesUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Movie>>> excute() async {
    return await movieRepository.getPopularMovies();
  }
}
