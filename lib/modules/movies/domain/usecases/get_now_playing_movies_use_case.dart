import 'package:dartz/dartz.dart';
import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie.dart';

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
