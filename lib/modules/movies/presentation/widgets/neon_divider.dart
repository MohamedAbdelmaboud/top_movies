import '../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class NeonDivider extends StatelessWidget {
  const NeonDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeonLine(
      alignment: Alignment.center,
      spreadColor: AppColors.primaryColor,
      lightSpreadRadius: 10,
      lightBlurRadius: 90,
      lineWidth: 200,
      lineHeight: 1,
      lineColor: AppColors.primaryColor.withOpacity(0.6),
    );
  }
}
