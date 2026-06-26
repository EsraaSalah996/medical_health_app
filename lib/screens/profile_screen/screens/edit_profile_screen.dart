import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_health_app/core/shared_widgets/custom_header.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeaderRow(
              title: "Profile",
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
          ],
        ),
      ),
    );
  }
}
