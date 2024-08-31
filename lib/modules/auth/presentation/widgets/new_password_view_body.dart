import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'confirm_password_field.dart';
import 'dialog_body.dart';
import 'new_password_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const Gap(24),
          Text(
            'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
            style: AppStyles.semiBold13.copyWith(
              color: const Color(0xFF616A6B),
            ),
          ),
          const Gap(30),
          const NewPasswordField(),
          const Gap(24),
          const ConfirmPasswordField(),
          const Gap(24),
          CustomButton(
            onPressed: () {
              updatePasswordDialog(context);
            },
            text: 'إنشاء كلمة مرور جديدة',
          ),
        ],
      ),
    );
  }

  Future<dynamic> updatePasswordDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: const DialogBody(),
      ),
    );
  }
}
