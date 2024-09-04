import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/movie_details.dart';
import '../repository/movie_repository.dart';

class GetMovieDetailsUseCase {
  final MovieRepository movieRepository;

  GetMovieDetailsUseCase({
    required this.movieRepository,
  });
  //  call or excute
  Future<Either<Failure, MovieDetails>> excute(int movieId) async {
    return await movieRepository.getMovieDetails(movieId);
  }
}
