import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../enities/user.dart';

abstract class AuthRepo {
  Future<Either<Failure, User>> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  );
  Future<Either<Failure, User>> signInWithEmailAndPassword(
    String email,
    String password,
  );
}
