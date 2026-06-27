import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/profile_screen/screens/notification_settings_screen.dart';
import 'package:medical_health_app/screens/profile_screen/screens/password_manager.dart';
import 'package:medical_health_app/screens/profile_screen/screens/privacy_policy_screen.dart';
import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/settings_menue_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderRow(
              title: "Settings",
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 64),
            SettingsMenueItem(
              iconPath: "assets/icons/notification.svg",
              title: "Notification Setting",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationSettingsScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 37),
            SettingsMenueItem(
              iconPath: "assets/icons/passowrd_manager.svg",
              title: "Password Manager",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordManager()),
                );
              },
            ),
            SizedBox(height: 37),
            SettingsMenueItem(
              iconPath: "assets/icons/person.svg",
              title: "delete account",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicyScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
