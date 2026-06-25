import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        const CircleAvatar(
          radius: 55,
          backgroundImage: AssetImage("assets/images/profil_image.png"),
        ),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: const Color(0xff2260FF),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            "assets/icons/edit.svg",
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
