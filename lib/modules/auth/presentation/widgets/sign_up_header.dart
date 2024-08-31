import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Create an ',
            style: AppStyles.bold23.copyWith(
              fontSize: 16,
              color: const Color(0xffffffff),
            ),
          ),
          TextSpan(
            text: 'account',
            style: AppStyles.bold23.copyWith(
              fontSize: 16,
              color: const Color(0xff00eaff),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
