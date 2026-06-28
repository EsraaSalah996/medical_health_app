import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/screens/home/home_screen.dart';
import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';

class ButtonNavigationBar extends StatefulWidget {
  final int initialIndex;

  const ButtonNavigationBar({this.initialIndex = 0, super.key});

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  void _onTap(int index) {
    if (index == _currentIndex) return;
    setState(() => _currentIndex = index);

    switch (index) {
      case 0:
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const HomeScreen()),
          (route) => false,
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff2260FF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(AppImage.home, 0),
            _buildNavItem(AppImage.chat, 1),
            _buildNavItem(AppImage.counts, 2),
            _buildNavItem(AppImage.calendar, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String imagePath, int index) {
    final isSelected = _currentIndex == index;
    return GestureDetector(
      onTap: () => _onTap(index),
      child: Image.asset(
        imagePath,
        width: 24,
        height: 24,
        color: isSelected
            ? const Color(0xff00278C)
            : Colors.white.withValues(alpha: 0.6),
      ),
    );
  }
}
