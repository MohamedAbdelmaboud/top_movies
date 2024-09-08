import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../../../core/utils/app_styles.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
    this.onChanged,
  });
  final void Function(String query)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const GradientOutlineInputBorder(
          gradient: LinearGradient(
            colors: [
              Color(0xff19A1BE),
              Color(0xff7D4199),
            ],
          ),
          width: 2,
        ),
        focusedBorder: const GradientOutlineInputBorder(
          gradient: LinearGradient(
            colors: [
              Color(0xff19A1BE),
              Color(0xff7D4199),
            ],
          ),
          width: 2,
        ),
        label: Text(
          "Search",
          style: AppStyles.regular14,
        ),
      ),
    );
  }
}
