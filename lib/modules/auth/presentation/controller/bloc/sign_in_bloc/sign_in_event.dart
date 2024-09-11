part of 'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInWithEmailAndPasswordEvent extends SignInEvent {}

class SignInWithGoogleEvent extends SignInEvent {}

class SignInWithFacebookEvent extends SignInEvent {}
