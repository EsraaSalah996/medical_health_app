import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_profile_image.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderRow(title: "My Profile"),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 24),

                    CustomProfileImage(),
                    const SizedBox(height: 16),

                    // الاسم
                    const Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 54),

                    ProfileMenuItem(
                      iconPath: "assets/icons/person.svg",
                      title: 'Profile',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/favourite.svg",
                      title: 'Favorite',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/payment.svg",
                      title: 'Payment Method',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/privacy.svg",
                      title: 'Privacy Policy',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/settings.svg",
                      title: 'Settings',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/help.svg",
                      title: 'Help',
                      onTap: () {},
                    ),
                    ProfileMenuItem(
                      iconPath: "assets/icons/logout.svg",
                      title: 'Logout',
                      onTap: () {},
                      showArrow: false,
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
