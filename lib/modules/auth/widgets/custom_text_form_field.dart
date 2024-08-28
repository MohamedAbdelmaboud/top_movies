import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.labeltext,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.onChanged,
    this.onSaved,
    this.validator,
  });
  final void Function(String value)? onChanged;
  final void Function(String? value)? onSaved;
  final String? labeltext;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0XFFF9FAFA),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        labelText: labeltext,
        labelStyle: AppStyles.bold13,
        suffixIcon: suffixIcon,
      ),
    );
  }

  _buildBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(4),
      ),
      borderSide: BorderSide(
        width: 1.2,
        color: Color(0XFFE6E9EA),
      ),
    );
  }
}
