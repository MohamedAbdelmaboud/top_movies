import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CastItemText extends StatelessWidget {
  const CastItemText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Steve Wall',
          style: AppStyles.bold14,
        ),
        Text(
          'Ivan',
          style: AppStyles.regular14.copyWith(),
        ),
      ],
    );
  }
}
