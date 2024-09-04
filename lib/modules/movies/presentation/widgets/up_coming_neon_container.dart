import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class UpComingNeonContainer extends StatelessWidget {
  const UpComingNeonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      height: 40,
      width: double.infinity,
      lightBlurRadius: 40,
      lightSpreadRadius: 2,
      borderRadius: const BorderRadius.vertical(
        // top: Radius.circular(10),
        bottom: Radius.circular(10),
      ),
      spreadColor: AppColors.primaryColor,
      borderColor: AppColors.primaryColor,
      borderWidth: 2,
      child: Roulette(
        child: TextButton(
            onPressed: () {
              context.push(AppRouter.upcoming);
            },
            child: Text(
              'Upcoming Movies',
              style: AppStyles.bold13,
            )),
      ),
    );
  }
}
