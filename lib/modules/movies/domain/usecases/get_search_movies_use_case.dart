import '../../../../core/error/failures.dart';
import '../entites/movie.dart';
import '../repository/movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetSearchMoviesUseCase {
  final MovieRepository movieRepository;

  GetSearchMoviesUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, List<Movie>>> execute(String query) async {
    return await movieRepository.searchMovies(query);
  }
}
