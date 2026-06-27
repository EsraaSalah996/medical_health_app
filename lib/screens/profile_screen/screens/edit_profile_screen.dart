import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header_row.dart';
import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';
import 'package:medical_health_app/screens/profile_screen/widgets/custom_data_container.dart';
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
              CustomHeaderRow(
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
              SizedBox(height: 13),
              CustomProfileImage(),
              SizedBox(height: 53),
              CustomDataContainer(label: "Full Name", value: "John Doe"),
              SizedBox(height: 31),
              CustomDataContainer(
                label: "Phone number",
                value: "+123 567 89000",
              ),
              SizedBox(height: 31),
              CustomDataContainer(label: "Email", value: "Johndoe@example.com"),
              SizedBox(height: 31),
              CustomDataContainer(
                label: "Date of birth",
                value: "DD / MM /YYY",
                valueColor: Color(0xff2260FF),
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
