import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_check_box.dart';
import 'terms_and_conditions_text.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChanged: onChanged,
        ),
        const Gap(8),
        const TermsAndConditionsText(),
      ],
    );
  }
}
