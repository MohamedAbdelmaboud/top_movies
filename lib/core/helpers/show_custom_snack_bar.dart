import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

void showCustomSnackBar(
  BuildContext context,
  String text, {
  bool isError = false,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(milliseconds: 1000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 10,
      behavior: SnackBarBehavior.floating,
      backgroundColor:
          isError ? Colors.red : AppColors.primaryColor.withOpacity(0.6),
      clipBehavior: Clip.none,
      content: Center(
        child: Text(
          text,
          style: AppStyles.regular12.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
