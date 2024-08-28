import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_styles.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    required this.iconPath,
    this.onTap,
    this.isLoading = false,
  });
  final String text;
  final String iconPath;
  final VoidCallback? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(
              0xffDDDFDF,
            ),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconPath),
            const Spacer(),
            isLoading
                ? LoadingAnimationWidget.stretchedDots(
                    color: AppColors.primaryColor,
                    size: 25,
                  )
                : Text(
                    'تسجيل بواسطة $text',
                    style: AppStyles.semiBold16.copyWith(
                      color: const Color(
                        0xff0C0D0D,
                      ),
                    ),
                  ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
