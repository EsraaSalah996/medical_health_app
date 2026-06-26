import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header.dart';
import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_profile_text_feild.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_profile_image.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_update_profile_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomHeaderRow(
                  title: "Profile",
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  trailingIcon: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xff2260FF),
                      shape: BoxShape.circle,
                    ),
                    child: SizedBox(
                      width: 21,
                      height: 21,
                      child: SvgPicture.asset(
                        "assets/icons/settings.svg",
                        width: 12,
                        height: 12,
                        fit: BoxFit.contain,
                        colorFilter: const ColorFilter.mode(
                          Color(0xffFFFFFF),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13),
              CustomProfileImage(),
              SizedBox(height: 53),
              CustomTextField(
                label: "Full Name",
                hintText: "enter your name",
                isPassword: false,
              ),
              SizedBox(height: 31),
              CustomTextField(
                label: "Phone number",
                hintText: "enter your Phone number",
                isPassword: false,
              ),
              SizedBox(height: 31),
              CustomTextField(
                label: "Email",
                hintText: "enter your email",
                isPassword: false,
              ),
              SizedBox(height: 31),
              CustomTextField(
                label: "Date of birth",
                hintText: "DD / MM /YYY",
                isPassword: false,
                hintColor: Color(0xff2260FF),
              ),
              SizedBox(height: 61),
              CustomUpdateProfileButton(text: "Update Profile", onTap: () {}),
              SizedBox(height: 67),
            ],
          ),
        ),
      ),
    );
  }
}
