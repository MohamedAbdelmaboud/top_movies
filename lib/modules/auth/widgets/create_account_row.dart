import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import 'text_with_button_row.dart';

class CreateAccountNow extends StatelessWidget {
  const CreateAccountNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWithButtonRow(
      text: 'ليس لديك حساب؟',
      textButton: 'إنشاء حساب جديد',
      onTap: () {
        context.push(AppRouter.register);
      },
    );
  }
}
