import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_header.dart';
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
              onTap: () {},
            ),
            SizedBox(height: 37),
            SettingsMenueItem(
              iconPath: "assets/icons/passowrd_manager.svg",
              title: "Password Manager",
              onTap: () {},
            ),
            SizedBox(height: 37),
            SettingsMenueItem(
              iconPath: "assets/icons/person.svg",
              title: "delete account",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
