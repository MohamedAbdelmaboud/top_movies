import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

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
              text: 'من خلال إنشاء حساب ، فإنك توافق على ',
              style: AppStyles.semiBold13.copyWith(
                color: const Color(0xff949D9E),
              ),
            ),
            TextSpan(
              text: 'الشروط والأحكام الخاصة بنا',
              style: AppStyles.semiBold13.copyWith(
                color: const Color(0xff2D9F5D),
              ),
            )
          ],
        ),
      ),
    );
  }
}
