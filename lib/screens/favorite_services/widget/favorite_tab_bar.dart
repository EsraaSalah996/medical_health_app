import 'package:flutter/material.dart';

class FavoriteTabBar extends StatelessWidget {
  final int selectedIndex; // 0 = Doctors, 1 = Services
  final ValueChanged<int> onTabChanged;

  const FavoriteTabBar({
    required this.selectedIndex,
    required this.onTabChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabItem(
          label: 'Doctors',
          isSelected: selectedIndex == 0,
          onTap: () => onTabChanged(0),
        ),
        const SizedBox(width: 10),
        TabItem(
          label: 'Services',
          isSelected: selectedIndex == 1,
          onTap: () => onTabChanged(1),
        ),
      ],
    );
  }
}

class TabItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const TabItem({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFF2260FF) : const Color(0xFFCAD6FF),
            borderRadius: BorderRadius.circular(30),
          ),

          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF2260FF),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
