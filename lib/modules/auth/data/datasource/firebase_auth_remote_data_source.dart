import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/error/error_message_model.dart';
import '../../../../core/error/exceptions.dart';

abstract class BaseFirebaseAuthRemoteDataSource {
  // concrete methods
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();
}

class FirebaseAuthRemoteDataSource
    implements BaseFirebaseAuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthRemoteDataSource({
    required this.firebaseAuth,
  });

  @override
  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User user = credential.user!;
      return user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'No user found for this email.',
            ),
          );
        case 'wrong-password':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'Incorrect password.',
            ),
          );
        case 'too-many-requests':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'Too many requests. Please try again later.',
            ),
          );
        case 'user-token-expired':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'User token has expired. Please log in again.',
            ),
          );
        case 'network-request-failed':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage:
                  'No internet connection. Please check your network',
            ),
          );
        default:
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'An unknown error occurred.',
            ),
          );
      }
    } catch (e) {
      throw CustomAuthException(
        errorMessageModel: const ErrorMessageModel(
          statusMessage: 'An error occurred while processing the request.',
        ),
      );
    }
  }

  @override
  Future<void> signOut() async {
    return await FirebaseAuth.instance.signOut();
  }

  @override
  Future<User> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = credential.user!;
      return user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'The account already exists for that email.',
            ),
          );
        case 'invalid-email':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'The email address is not valid.',
            ),
          );
        case 'operation-not-allowed':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'Email & Password accounts are not enabled.',
            ),
          );

        case 'weak-password':
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'The password is too weak.',
            ),
          );
        default:
          throw CustomAuthException(
            errorMessageModel: const ErrorMessageModel(
              statusMessage: 'An error occurred while processing the request.',
            ),
          );
      }
    } catch (e) {
      throw CustomAuthException(
        errorMessageModel: const ErrorMessageModel(
          statusMessage: 'An error occurred while processing the request.',
        ),
      );
    }
  }
}
