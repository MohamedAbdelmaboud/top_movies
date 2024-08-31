import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckBox extends HookWidget {
  const CustomCheckBox({
    super.key,
    required this.onChanged,
  });
  // final VoidCallback onTap;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);
    return GestureDetector(
      onTap: () {
        isChecked.value = !isChecked.value;
        onChanged(isChecked.value);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isChecked.value ? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color(0xFFDDDFDF),
            width: 1.5,
          ),
        ),
        child: isChecked.value
            ? const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
