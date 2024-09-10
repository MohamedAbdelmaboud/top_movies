import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/enities/user.dart';
import '../../domain/repository/auth_repo.dart';
import '../datasource/firebase_auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRepoImpl implements AuthRepo {
  final BaseFirebaseAuthRemoteDataSource baseFirebaseAuthRemoteDataSource;

  AuthRepoImpl({
    required this.baseFirebaseAuthRemoteDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final user = await baseFirebaseAuthRemoteDataSource
          .signInWithEmailAndPassword(email: email, password: password);
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      return right(userEntity);
    } on CustomAuthException catch (e) {
      return left(
        FirebaseFailure(errorMessage: e.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final user = await baseFirebaseAuthRemoteDataSource
          .signUpWithEmailAndPassword(email: email, password: password);
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      return right(userEntity);
    } on CustomAuthException catch (e) {
      return left(
        FirebaseFailure(errorMessage: e.errorMessageModel.statusMessage),
      );
    }
  }

  @override
  Future<void> signOut() {
    return baseFirebaseAuthRemoteDataSource.signOut();
  }
}
