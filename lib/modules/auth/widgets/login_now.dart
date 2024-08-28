import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'text_with_button_row.dart';

class LoginNow extends StatelessWidget {
  const LoginNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWithButtonRow(
      text: 'تمتلك حساب بالفعل؟',
      textButton: 'تسجيل دخول',
      onTap: () {
        context.pop();
      },
    );
  }
}
