import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../entites/movie.dart';

class GetNowPlayingMoviesUseCase {
  final MovieRepository movieRepository;

  GetNowPlayingMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<List<Movie>> excute() async {
    return await movieRepository.getNowPlayingMovies();
  }
}
