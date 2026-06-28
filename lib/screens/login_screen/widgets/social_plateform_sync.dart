import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialPlateformSync extends StatelessWidget {
  final String iconPath;
  const SocialPlateformSync({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 62,
        height: 62,
        decoration: const BoxDecoration(
          color: Color(0xffECF1FF),
          shape: BoxShape.circle,
        ),
        child: Center(child: SvgPicture.asset(iconPath, width: 34, height: 34)),
      ),
    );
  }
}
