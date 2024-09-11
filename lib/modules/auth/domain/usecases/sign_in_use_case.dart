import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../enities/user.dart';
import '../repository/auth_repo.dart';

class SignInUseCase {
  final AuthRepo authRepo;

  SignInUseCase({
    required this.authRepo,
  });
  Future<Either<Failure, UserEntity>> execute(
    String email,
    String password,
  ) async {
    return await authRepo.signInWithEmailAndPassword(email, password);
  }
}
