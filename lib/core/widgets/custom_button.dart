import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

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
    return GestureDetector(
      onTap: isButtonEnabled ? onPressed : null,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff00eaff),
              Color(0xff0377ff),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: isLoading
              ? LoadingAnimationWidget.threeArchedCircle(
                  color: Colors.white,
                  size: 25,
                )
              : Text(
                  text,
                  style: AppStyles.bold16.copyWith(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
