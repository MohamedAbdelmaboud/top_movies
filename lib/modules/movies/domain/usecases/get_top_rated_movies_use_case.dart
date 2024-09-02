import 'package:dartz/dartz.dart';
import 'package:top_movies/modules/movies/domain/entites/movie.dart';

import '../../../../core/error/failures.dart';
import '../repository/movie_repository.dart';

class GetTopRatedMoviesUseCase {
  final MovieRepository movieRepository;
  GetTopRatedMoviesUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Movie>>> excute() async {
    return await movieRepository.getTopRatedMovies();
  }
}
