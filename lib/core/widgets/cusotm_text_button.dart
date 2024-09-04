import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CusotmTextButton extends StatelessWidget {
  const CusotmTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppStyles.semiBold12.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
