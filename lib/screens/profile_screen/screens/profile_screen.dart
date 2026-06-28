import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/login_screen/screens/second_login_screen.dart';
import 'package:medical_health_app/screens/profile_screen/screens/edit_profile_screen.dart';
import 'package:medical_health_app/screens/profile_screen/screens/settings_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_profile_image.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/profile_menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          child: Column(
            children: [
              const CustomHeaderRow(title: "My Profile"),
              Column(
                children: [
                  const SizedBox(height: 24),

                  CustomProfileImage(),
                  const SizedBox(height: 16),

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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfileScreen(),
                        ),
                      );
                    },
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                  ),
                  ProfileMenuItem(
                    iconPath: "assets/icons/help.svg",
                    title: 'Help',
                    onTap: () {},
                  ),
                  ProfileMenuItem(
                    iconPath: "assets/icons/logout.svg",
                    title: 'Logout',
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SecondLoginScreen()),
                      (route) => false,
                    ),
                    showArrow: false,
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(initialIndex: 2),
    );
  }
}
