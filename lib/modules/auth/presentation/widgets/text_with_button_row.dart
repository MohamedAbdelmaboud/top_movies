import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/core/utils/app_colors.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/cusotm_text_button.dart';

class TextWithButtonRow extends StatelessWidget {
  const TextWithButtonRow({
    super.key,
    required this.text,
    required this.textButton,
    required this.onTap,
  });
  final String text;
  final String textButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.semiBold12.copyWith(
            color: AppColors.greyColor,
          ),
        ),
        const Gap(3),
        CusotmTextButton(
          text: textButton,
          onTap: onTap,
        ),
      ],
    );
  }
}
