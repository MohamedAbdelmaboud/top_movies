import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';

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
        const Gap(2),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 200,
            minHeight: 10,
          ),
          child: Text(
            'Dani Timmis / Darcy Odello',
            style: AppStyles.regular9.copyWith(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
