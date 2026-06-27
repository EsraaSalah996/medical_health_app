import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/profile_screen/screens/settings_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_unenabled_swich.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_enabled_switch.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_notification_row.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderRow(
              title: "Notification Setting",
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 51),
            CustomNotificationRow(
              title: "General Notification",
              switchWidget: CustomEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Sound",
              switchWidget: CustomEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Sound Call",
              switchWidget: CustomEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Vibrate",
              switchWidget: CustomUnEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Special Offers",
              switchWidget: CustomUnEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Payments",
              switchWidget: CustomEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Promo And Discount",
              switchWidget: CustomUnEnabledSwitch(),
            ),
            SizedBox(height: 42),
            CustomNotificationRow(
              title: "Cashback",
              switchWidget: CustomEnabledSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
