import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/profile_screen/screens/settings_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/change_password_button.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_text_feild.dart';

class PasswordManager extends StatelessWidget {
  const PasswordManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderRow(
                title: "password manager",
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 45),
              CustomTextFeild(label: "Current Password", isPassword: true),
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color(0xff2F63F5),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const CustomTextFeild(label: "New Password", isPassword: true),

              const SizedBox(height: 30),

              const CustomTextFeild(
                label: "Confirm New Password",
                isPassword: true,
              ),
              SizedBox(height: 180),
              ChangePasswordButton(text: "Change Password", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
