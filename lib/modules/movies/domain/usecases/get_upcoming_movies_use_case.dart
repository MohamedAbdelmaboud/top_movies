import '../../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetUpcomingMoviesUseCase {
  final MovieRepository movieRepository;

  GetUpcomingMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, List<Movie>>> excute() async {
    return await movieRepository.getUpcomingMovies();
  }
}