import '../repository/auth_repo.dart';

class SignOutUseCase {
  final AuthRepo authRepo;

  SignOutUseCase({
    required this.authRepo,
  });
  Future<void> excute() async {
    return await authRepo.signOut();
  }
}