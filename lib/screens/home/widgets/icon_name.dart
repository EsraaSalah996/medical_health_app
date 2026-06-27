import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/icon_button.dart';

class IconName extends StatelessWidget {
  const IconName({super.key, required this.imagePath, required this.label});
  final String imagePath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButtonApp(imagePath: imagePath, isPressed: true, onTap: () {}),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF3D5AF1),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
