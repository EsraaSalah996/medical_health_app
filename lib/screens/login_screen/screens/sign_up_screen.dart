import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/login_screen/screens/first_login_screen.dart';
import 'package:medical_health_app/screens/login_screen/screens/set_password_screen.dart';
import 'package:medical_health_app/screens/login_screen/widgets/authintcation_footer.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_button.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_text_feild.dart';
import 'package:medical_health_app/screens/login_screen/widgets/social_plateform_sync.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderRow(
                title: "New Account",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstLoginScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 34),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const CustomLoginTextFeild(
                      label: "Full name",
                      hintText: "example@example.com",
                    ),

                    const SizedBox(height: 24),

                    const CustomLoginTextFeild(
                      label: "Password",
                      isPassword: true,
                    ),

                    const SizedBox(height: 24),

                    const CustomLoginTextFeild(
                      label: "Email",
                      hintText: "example@example.com",
                    ),

                    const SizedBox(height: 24),

                    const CustomLoginTextFeild(
                      label: "Mobile Number",
                      hintText: "example@example.com",
                    ),

                    const SizedBox(height: 24),

                    const CustomLoginTextFeild(
                      label: "Date Of Birth",
                      hintText: "DD / MM / YYYY",
                    ),

                    const SizedBox(height: 26),

                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                        children: [
                          TextSpan(text: "By continuing, you agree to\n"),
                          TextSpan(
                            text: "Terms of Use",
                            style: TextStyle(
                              color: Color(0xff2F63F5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(text: " and "),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: TextStyle(
                              color: Color(0xff2F63F5),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    CustomLoginButton(
                      title: "Sign Up",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SetPasswordScreen(),
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
                      children: const [
                        SocialPlateformSync(
                          iconPath: "assets/icons/google.svg",
                        ),
                        SizedBox(width: 8),
                        SocialPlateformSync(
                          iconPath: "assets/icons/facebook.svg",
                        ),
                        SizedBox(width: 8),
                        SocialPlateformSync(
                          iconPath: "assets/icons/finger_print.svg",
                        ),
                      ],
                    ),

                    const SizedBox(height: 45),

                    AuthintcationFooter(
                      text: "already have an account? ",
                      actionText: "Log in",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirstLoginScreen(),
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
