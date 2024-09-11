import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../enities/user.dart';
import '../repository/auth_repo.dart';

class SignUpUseCase {
  final AuthRepo authRepo;

  SignUpUseCase({
    required this.authRepo,
  });
  Future<Either<Failure, UserEntity>> execute(
    String email,
    String password,
    String name,
  ) async {
    return await authRepo.signUpWithEmailAndPassword(email, password, name);
  }
}
