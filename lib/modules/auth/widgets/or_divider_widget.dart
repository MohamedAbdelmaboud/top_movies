import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class OrDividerWidget extends StatelessWidget {
  const OrDividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'or',
          style: AppStyles.semiBold16.copyWith(
            color: const Color(0xff949D9E),
          ),
        ),
      ],
    );
  }
}
