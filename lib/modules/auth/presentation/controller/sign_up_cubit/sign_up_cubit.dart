import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/enities/user.dart';
import '../../../domain/usecases/sign_up_use_case.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  static SignUpCubit get(context) => BlocProvider.of(context);
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());
  final SignUpUseCase signUpUseCase;
  String name = '';
  String password = '';
  String email = '';
  final key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  signUpWithEmailAndPassword() async {
    if (_formNotValid()) return;

    emit(SignUpLoading());
    final result = await signUpUseCase.execute(email, password, name);
    result.fold(
      (failure) => emit(
        SignUpFailure(message: failure.errorMessage),
      ),
      (user) => emit(
        SignUpSuccess(user: user),
      ),
    );
  }

  bool _formNotValid() {
    if (!key.currentState!.validate()) {
      autovalidateMode = AutovalidateMode.always;
      emit(SignUpInitial());
      return true;
    }
    key.currentState!.save();
    return false;
  }
}
