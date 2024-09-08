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
      crossAxisAlignment: isArabic(cast.character)
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cast.name,
          style: AppStyles.bold9,
        ),
        const Gap(2),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 200,
          ),
          child: Text(
            cast.character,
            style: AppStyles.bold9.copyWith(
              color: Colors.white.withOpacity(0.8),
              fontFamily: isArabic(cast.character) ? 'Cairo' : null,
              fontSize: isArabic(cast.character) ? 12 : null,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textDirection: isArabic(cast.character)
                ? TextDirection.rtl
                : TextDirection.ltr,
          ),
        ),
      ],
    );
  }
}

bool isArabic(String text) {
  final arabicRegExp = RegExp(r'[\u0600-\u06FF]');
  return arabicRegExp.hasMatch(text);
}
