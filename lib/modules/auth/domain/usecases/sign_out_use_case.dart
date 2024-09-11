import '../repository/auth_repo.dart';

class SignOutUseCase {
  final AuthRepo authRepo;

  SignOutUseCase({
    required this.authRepo,
  });
  Future<void> execute() async {
    return await authRepo.signOut();
  }
}