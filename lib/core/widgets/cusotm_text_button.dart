import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CusotmTextButton extends StatelessWidget {
  const CusotmTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: AppStyles.semiBold13.copyWith(
          color: const Color(0xff2D9F5D),
        ),
      ),
    );
  }
}
