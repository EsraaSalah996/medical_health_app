import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/login_screen/screens/second_login_screen.dart';
import 'package:medical_health_app/screens/login_screen/screens/sign_up_screen.dart';
import 'package:medical_health_app/screens/login_screen/widgets/authintcation_footer.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_button.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_text_feild.dart';
import 'package:medical_health_app/screens/login_screen/widgets/social_plateform_sync.dart';

class FirstLoginScreen extends StatelessWidget {
  const FirstLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderRow(title: "Hello", onTap: () {}),
              const SizedBox(height: 34),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        color: Color(0xff2F63F5),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 12),
                    const Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ''',
                      style: TextStyle(
                        color: Color(0xff070707),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    const SizedBox(height: 47),

                    const CustomLoginTextFeild(
                      label: "Email or Mobile Number",
                      hintText: "example@example.com",
                    ),

                    const SizedBox(height: 28),

                    const CustomLoginTextFeild(
                      label: "Password",
                      isPassword: true,
                    ),

                    const SizedBox(height: 10),

                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                            color: Color(0xff2F63F5),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    CustomLoginButton(
                      title: "Log In",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SecondLoginScreen(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 24),

                    const Center(
                      child: Text(
                        "or sign up with",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialPlateformSync(
                          iconPath: "assets/icons/google.svg",
                        ),
                        const SizedBox(width: 8),
                        SocialPlateformSync(
                          iconPath: "assets/icons/facebook.svg",
                        ),
                        const SizedBox(width: 8),
                        SocialPlateformSync(
                          iconPath: "assets/icons/finger_print.svg",
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),

                    AuthintcationFooter(
                      text: "Don’t have an account? ",
                      actionText: "Sign Up",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 40),
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
