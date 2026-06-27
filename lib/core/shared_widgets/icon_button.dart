import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonApp extends StatelessWidget {
  final String imagePath;
  final Color? iconColor;
  final Color? backgroundColor;
  final bool isPressed;
  final VoidCallback onTap;

  const IconButtonApp({
    super.key,
    required this.imagePath,
    required this.isPressed,
    required this.onTap,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final isSvg = imagePath.toLowerCase().endsWith('.svg');

    final currentIconColor =
        iconColor ??
        (isPressed ? const Color(0xFF3D5AF1) : const Color(0xFF1A1A2E));

    final currentBgColor =
        backgroundColor ??
        (isPressed ? const Color(0xFFDDE3FF) : const Color(0xFFF0F4FF));

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: currentBgColor,
          shape: BoxShape.circle,
        ),
        child: isSvg
            ? SvgPicture.asset(
                imagePath,
                width: 22,
                height: 22,
                colorFilter: ColorFilter.mode(
                  currentIconColor,
                  BlendMode.srcIn,
                ),
              )
            : Image.asset(
                imagePath,
                width: 22,
                height: 22,
                color: currentIconColor,
              ),
      ),
    );
  }
}
