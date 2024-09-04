import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/movie_repository.dart';

class GetPopularMoviesUseCase {
  final MovieRepository movieRepository;

  GetPopularMoviesUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Movie>>> excute() async {
    return await movieRepository.getPopularMovies();
  }
}
