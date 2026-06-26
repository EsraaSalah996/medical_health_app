import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onTap;
  final bool showArrow;

  const ProfileMenuItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    this.showArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xffCAD6FF),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(
                  iconPath,
                  fit: BoxFit.contain,
                  colorFilter: const ColorFilter.mode(
                    Color(0xff2260FF),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ),
            if (showArrow)
              SvgPicture.asset(
                'assets/icons/arrow_forward.svg',
                width: 8,
                height: 14,
                colorFilter: ColorFilter.mode(
                  const Color(0xffCAD6FF),
                  BlendMode.srcIn,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
