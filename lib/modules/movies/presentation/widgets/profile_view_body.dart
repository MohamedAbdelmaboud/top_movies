import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'account_item.dart';
import 'dummy_profile_text.dart';
import 'neon_divider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'settings_items_col.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const Align(
            child: AccountItem(),
          ),
          const Gap(
            30,
          ),
          const NeonDivider(),
          const Gap(
            20,
          ),
          Text(
            'Settings',
            style: AppStyles.regular14.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(
            10,
          ),
          const SettingsItemsCol(),
          const Gap(
            10,
          ),
          const Spacer(),
          const DummyProfileText(),
          const Gap(30),
        ],
      ),
    );
  }
}
