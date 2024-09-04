import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/movie_repository.dart';

class GetNowPlayingMoviesUseCase {
  final MovieRepository movieRepository;

  GetNowPlayingMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, List<Movie>>> excute() async {
    return await movieRepository.getNowPlayingMovies();
  }
}
