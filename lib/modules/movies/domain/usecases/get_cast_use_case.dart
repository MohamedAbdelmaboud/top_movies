import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/cast.dart';
import '../repository/movie_repository.dart';

class GetCastUseCase {
  final MovieRepository movieRepository;

  GetCastUseCase({
    required this.movieRepository,
  });
  Future<Either<Failure, List<Cast>>> execute(int movieId) async {
    return await movieRepository.getCast(movieId);
  }
}
