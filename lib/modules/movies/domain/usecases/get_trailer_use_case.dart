import '../../../../core/error/failures.dart';
import '../entites/trailer.dart';
import '../repository/movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetTrailerUseCase {
  final MovieRepository movieRepository;

  GetTrailerUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Trailer>>> execute(int movieId) async {
    return await movieRepository.getTrailer(movieId);
  }
}
