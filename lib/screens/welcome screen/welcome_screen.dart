
import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/login_screen/screens/first_login_screen.dart';
import 'package:medical_health_app/screens/login_screen/screens/sign_up_screen.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_button.dart';
import 'package:medical_health_app/screens/welcome%20screen/widgets/custom_sign_up_button.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const Spacer(flex: 2),

              Image.asset(
                'assets/images/welcome.png',
                width: 120,
              ),
              const SizedBox(height: 60),

              Image.asset(
                'assets/images/welcome text.png',
                width: 267,
              ),

              const SizedBox(height: 30),
              CustomLoginButton(
                title: "Log In",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstLoginScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 5),

              CustomsignupButton(
                title: "Sign Up",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}