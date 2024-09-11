import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DummyProfileText extends StatelessWidget {
  const DummyProfileText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Dummy Profile!!!! © 2024",
        style: AppStyles.regular14.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
