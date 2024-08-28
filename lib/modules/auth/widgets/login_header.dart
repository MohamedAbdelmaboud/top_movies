import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'page_view_item_title.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/app_logo.png',
          height: 100,
        ),
        const Gap(10),
        const PageViewItemTitle1(
          fontSize: 14,
        ),
      ],
    );
  }
}
