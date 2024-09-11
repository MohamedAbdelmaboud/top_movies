import 'package:flutter/material.dart';

class SettingsModel {
  final Color bgColor;
  final Color color;
  final String title;
  final IconData iconData;
  final void Function()? onTap;
  SettingsModel({
    this.onTap,
    required this.bgColor,
    required this.color,
    required this.title,
    required this.iconData,
  });
}
