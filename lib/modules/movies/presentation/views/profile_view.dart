import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/profile_view_body.dart';
import '../../../../core/utils/service_locator.dart';
import '../../../auth/domain/usecases/sign_up_use_case.dart';
import '../../../auth/presentation/controller/sign_up_cubit/sign_up_cubit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(
        getIt<SignUpUseCase>(),
      ),
      child: const Scaffold(
        body: ProfileViewBody(),
      ),
    );
  }
}
