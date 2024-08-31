import 'package:flutter/material.dart';

import '../../../../../core/widgets/cusotm_text_button.dart';

class ForgotPasswordTextButton extends StatelessWidget {
  const ForgotPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CusotmTextButton(
        text: 'Forgot password?',
        onTap: () {
          // context.push(AppRouter.forgetPasword);
        },
      ),
    );
  }
}
