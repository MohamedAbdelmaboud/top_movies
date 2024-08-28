import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class DialogBody extends StatelessWidget {
  const DialogBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Assets.assetsImagesSuccess),
          const Gap(30),
          Text(
            'تم تغيير كلمة المرور بنجاح',
            style: AppStyles.bold13.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
        ],
      ),
    );
  }
}
