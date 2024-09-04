import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../core/utils/app_colors.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /*
    SizedBox(
      width: MediaQuery.of(context).size.width - (KHorizental * 2 ) - 48 (size of checkbox),)
    */
    return Expanded(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'By creating an account, you agree to our ',
              style: AppStyles.semiBold13.copyWith(
                color: AppColors.greyColor,
              ),
            ),
            TextSpan(
              text: 'Terms and Conditions',
              style: AppStyles.semiBold13.copyWith(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
