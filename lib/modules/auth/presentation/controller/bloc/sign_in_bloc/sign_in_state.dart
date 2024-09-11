part of 'sign_in_bloc.dart';

sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInInitial extends SignInState {}

// lopading state
final class SignInLoading extends SignInState {}

// failure state
final class SignInFailure extends SignInState {
  final String message;

  const SignInFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

// success state
final class SigninSuccess extends SignInState {
  final UserEntity user;

  const SigninSuccess({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}
