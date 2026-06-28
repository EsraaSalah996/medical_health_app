import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/login_screen/screens/sign_up_screen.dart';
import 'package:medical_health_app/screens/login_screen/widgets/create_new_password_button.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_text_feild.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderRow(
                title: "Set Password",
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 34),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(
                        color: Color(0xff070707),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    const SizedBox(height: 40),

                    const CustomLoginTextFeild(
                      label: "Password",
                      isPassword: true,
                    ),

                    const SizedBox(height: 30),

                    const CustomLoginTextFeild(
                      label: "Confirm Password",
                      isPassword: true,
                    ),

                    const SizedBox(height: 55),

                    CreateNewPasswordButton(
                      title: "Create New Password",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
