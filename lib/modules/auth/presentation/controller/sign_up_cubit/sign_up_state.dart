part of 'sign_up_cubit.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpState {}

// loading state
final class SignUpLoading extends SignUpState {}

// failure state
final class SignUpFailure extends SignUpState {
  final String message;

  const SignUpFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

// success state
final class SignUpSuccess extends SignUpState {
  final UserEntity user;

  const SignUpSuccess({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}
