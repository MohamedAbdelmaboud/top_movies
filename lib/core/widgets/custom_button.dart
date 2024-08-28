import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.isButtonEnabled = true,
  });
  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(
          double.infinity,
          50,
        ),
      ),
      onPressed: isButtonEnabled ? onPressed : null,
      child: isLoading
          ? LoadingAnimationWidget.threeArchedCircle(
              color: Colors.white,
              size: 25,
            )
          : Text(
              text,
              style: AppStyles.bold16,
            ),
    );
  }
}
