import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAlign extends StatelessWidget {
  const CustomAlign({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: AppStyles.regular13.copyWith(),
      ),
    );
  }
}
