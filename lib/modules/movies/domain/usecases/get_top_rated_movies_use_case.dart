import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/movie_repository.dart';

class GetTopRatedMoviesUseCase {
  final MovieRepository movieRepository;
  GetTopRatedMoviesUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Movie>>> execute() async {
    return await movieRepository.getTopRatedMovies();
  }
}
