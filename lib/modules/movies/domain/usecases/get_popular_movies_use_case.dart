import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../entites/movie.dart';

class GetPopularMoviesUseCase {
  final MovieRepository movieRepository;

  GetPopularMoviesUseCase({
    required this.movieRepository,
  });
  Future<List<Movie>>  excute() async {
    return await movieRepository.getPopularMovies();
  }
}
