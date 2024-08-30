import 'package:top_movies/modules/movies/domain/entites/movie.dart';

import '../repository/movie_repository.dart';

class GetTopRatedMoviesUseCase {
  final MovieRepository movieRepository;
  GetTopRatedMoviesUseCase({
    required this.movieRepository,
  });
  Future<List<Movie>> excute() async {
    return await movieRepository.getTopRatedMovies();
  }
}
