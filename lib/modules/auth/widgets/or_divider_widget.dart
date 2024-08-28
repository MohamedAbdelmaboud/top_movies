import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'auth_divider.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: AuthDivider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 17.83,
          ),
          child: Text(
            'أو',
            style: AppStyles.semiBold13.copyWith(
              color: const Color(0xff949D9E),
            ),
          ),
        ),
        const Expanded(
          child: AuthDivider(),
        ),
      ],
    );
  }
}
