import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class PageViewItemTitle1 extends StatelessWidget {
  const PageViewItemTitle1({
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
            text: 'مرحبًا بك في',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
            ),
          ),
          TextSpan(
            text: ' Fruit',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: 'HUB',
            style: AppStyles.bold23.copyWith(
              fontSize: fontSize,
              color: const Color(0xFFF4A91F),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
