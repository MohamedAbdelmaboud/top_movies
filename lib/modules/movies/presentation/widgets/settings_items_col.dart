import 'package:flutter/material.dart';
import '../../data/models/setting_model.dart';
import 'settings_item.dart';

class SettingsItemsCol extends StatelessWidget {
  const SettingsItemsCol({
    super.key,
  });

  static List<SettingsModel> settingsList = [
    SettingsModel(
      bgColor: Colors.orange.shade100,
      color: Colors.orange,
      title: 'Language',
      iconData: Icons.public,
    ),
    SettingsModel(
      bgColor: Colors.blue.shade100,
      color: Colors.blue,
      title: 'Notifications',
      iconData: Icons.notifications_none_rounded,
    ),
    SettingsModel(
      bgColor: Colors.purple.shade100,
      color: Colors.purple,
      title: 'Dark Mode',
      iconData: Icons.dark_mode_outlined,
    ),
    SettingsModel(
      bgColor: Colors.red.shade100,
      color: Colors.red,
      title: 'Help',
      iconData: Icons.support,
    ),
    SettingsModel(
      bgColor: Colors.deepPurple.shade100,
      color: Colors.deepPurple,
      title: 'Log out',
      iconData: Icons.logout,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settingsList
          .map((settingsModel) => SettingsItem(settingsModel: settingsModel))
          .toList(),
    );
  }
}
