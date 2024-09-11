import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/enities/user.dart';
import '../../../../domain/usecases/sign_in_use_case.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  static SignInBloc get(context) => BlocProvider.of(context);

  final SignInUseCase signInUseCase;
  String email = '';
  String password = '';
  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  SignInBloc(this.signInUseCase) : super(SignInInitial()) {
    on<SignInWithEmailAndPasswordEvent>(_signInWithEmailMethod);
  }

  FutureOr<void> _signInWithEmailMethod(
      SignInWithEmailAndPasswordEvent event, Emitter<SignInState> emit) async {
    if (_formNotValid()) return;
    emit(SignInLoading());
    final result = await signInUseCase.execute(email, password);
    result.fold(
      (failure) => emit(SignInFailure(message: failure.errorMessage)),
      (user) => emit(SigninSuccess(user: user)),
    );
  }

  bool _formNotValid() {
    if (!key.currentState!.validate()) {
      autovalidateMode = AutovalidateMode.always;
      // emit(SignInInitial());
      return true;
    }
    key.currentState!.save();

    return false;
  }
}
