import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:top_movies/core/routing/app_router.dart';
import 'package:top_movies/core/utils/app_colors.dart';

class WelcomeButtonWidget extends StatelessWidget {
  const WelcomeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        spreadColor: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(100),
        lightBlurRadius: 100,
        lightSpreadRadius: 25,
        borderWidth: 2,
        borderColor: Colors.green.shade100,
        child: CircumscribingIconButton(
          icon: Icons.arrow_right_alt_sharp,
          onTap: () {
            context.go(
              AppRouter.login,
            );
          },
          backgroundColor: AppColors.primaryColor,
        ));
  }
}
