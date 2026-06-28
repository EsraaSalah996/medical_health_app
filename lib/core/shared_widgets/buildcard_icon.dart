import 'package:flutter/material.dart';

class BuildcardIcon extends StatelessWidget {
  const BuildcardIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 16, color: const Color(0xFF1A66FF)),
      ),
    );
  }
}
