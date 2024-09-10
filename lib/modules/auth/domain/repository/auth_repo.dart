import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../enities/user.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<void> signOut();
}
