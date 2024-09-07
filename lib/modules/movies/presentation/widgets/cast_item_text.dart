import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/cast.dart';

class CastItemText extends StatelessWidget {
  const CastItemText({
    super.key,
    required this.cast,
  });
  final Cast cast;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cast.name,
          style: AppStyles.bold12,
        ),
        const Gap(2),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 200,
          ),
          child: Text(
            cast.character,
            style: AppStyles.regular12.copyWith(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
