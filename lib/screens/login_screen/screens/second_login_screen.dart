import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/home/home_screen.dart';
import 'package:medical_health_app/screens/login_screen/screens/first_login_screen.dart';
import 'package:medical_health_app/screens/login_screen/screens/sign_up_screen.dart';
import 'package:medical_health_app/screens/login_screen/widgets/authintcation_footer.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_button.dart';
import 'package:medical_health_app/screens/login_screen/widgets/custom_login_text_feild.dart';

class SecondLoginScreen extends StatelessWidget {
  const SecondLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeaderRow(
                title: "Hello",
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstLoginScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 55),
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

                    const SizedBox(height: 45),

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
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                    const SizedBox(height: 24),

                    const Center(
                      child: Text("or", style: TextStyle(fontSize: 18)),
                    ),

                    const SizedBox(height: 20),

                    Center(
                      child: Container(
                        width: 62,
                        height: 62,
                        decoration: const BoxDecoration(
                          color: Color(0xffECF1FF),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/icons/finger_print.svg",
                            width: 34,
                            height: 34,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 45),

                    AuthintcationFooter(
                      text: "Don’t have an account? Sign Up",
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
