import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_colors.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    this.fontSize,
  });
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Welcome to',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
            ),
          ),
          TextSpan(
            text: ' TOP',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: 'MOVIES',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
              color: const Color.fromARGB(255, 244, 45, 31),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
