import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/setting_model.dart';
import 'small_button.dart';

class SettingsItem extends StatefulWidget {
  final SettingsModel settingsModel;
  const SettingsItem({super.key, required this.settingsModel});

  @override
  State<SettingsItem> createState() => _SettingsItemState();
}

class _SettingsItemState extends State<SettingsItem> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: widget.settingsModel.bgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              widget.settingsModel.iconData,
              color: widget.settingsModel.color,
            ),
          ),
          const Gap(20),
          Text(
            widget.settingsModel.title,
            style: AppStyles.regular12.copyWith(),
          ),
          const Spacer(
            flex: 2,
          ),
        
          widget.settingsModel.title == 'Dark Mode'
              ? Text(
                  'coming soon',
                  style: AppStyles.regular12.copyWith(
                    color: AppColors.primaryColor,
                  ),
                )
              : ProfileArrowButton(
                  onTap: widget.settingsModel.onTap,
                  iconData: Icons.arrow_forward_ios_sharp,
                )
        ],
      ),
    );
  }
}
