import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsMenueItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;

  const SettingsMenueItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            SvgPicture.asset(iconPath, width: 17, height: 26),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF000000),
                ),
              ),
            ),

            SvgPicture.asset(
              'assets/icons/arrow_forward.svg',
              width: 8,
              height: 14,
              colorFilter: ColorFilter.mode(
                const Color(0xff2260FF),
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
