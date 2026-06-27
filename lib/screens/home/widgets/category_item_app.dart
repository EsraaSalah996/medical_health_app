import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemApp extends StatelessWidget {
  final String imagePath;
  final String title;
  final bool isSelected;
  final Widget nextScreen;

  const CategoryItemApp({
    super.key,
    required this.imagePath,
    required this.title,
    required this.isSelected,
    required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    final isSvg = imagePath.toLowerCase().endsWith('.svg');

    final iconColor = isSelected ? const Color(0xFF3D5AF1) : Colors.grey;
    final textColor = isSelected ? const Color(0xFF3D5AF1) : Colors.grey;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextScreen),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSvg
              ? SvgPicture.asset(
                  imagePath,
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                )
              : Image.asset(imagePath, width: 24, height: 24, color: iconColor),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: textColor,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
