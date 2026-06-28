
import 'package:flutter/material.dart';

class CustomTopScreen extends StatefulWidget {
  final String title;

  const CustomTopScreen({
    super.key, 
    required this.title,
  });

  @override
  State<CustomTopScreen> createState() => _CustomTopScreenState();
}

class _CustomTopScreenState extends State<CustomTopScreen> {
  int activeHeaderIconIndex = -1; 
  int activeSortIconIndex = 0; 

  final Color primaryColor = const Color(0xff2260FF);
  final Color inactiveColor = const Color(0xffCAD6FF);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios, color: primaryColor, size: 18), 
                ),
                Text(
                  widget.title,
                  style: TextStyle(
                    color:Color(0XFF2260FF),
                    fontWeight: FontWeight.bold,
                    fontSize:18, 
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () => setState(() => activeHeaderIconIndex = activeHeaderIconIndex == 0 ? -1 : 0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.all(6),
                        width: 28, 
                        height: 28,
                        decoration: BoxDecoration(
                          color: activeHeaderIconIndex == 0 ? primaryColor : inactiveColor.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/search icon.png', 
                            width: 14, 
                            height: 14,
                            color: activeHeaderIconIndex == 0 ? Colors.white : primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8), 
                    
                    GestureDetector(
                      onTap: () => setState(() => activeHeaderIconIndex = activeHeaderIconIndex == 1 ? -1 : 1),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.all(6),
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: activeHeaderIconIndex == 1 ? primaryColor : inactiveColor.withOpacity(0.4),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/filter icon.png', 
                            width: 14,
                            height: 14,
                            color: activeHeaderIconIndex == 1 ? Colors.white : primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            
            const SizedBox(height: 16),
            
            Row(
              children: [
                const Text(
                  'Sort By',
                  style: TextStyle(
                    color: Color(0xff070707),
                    fontSize: 11, 
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () => setState(() => activeSortIconIndex = 0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: activeSortIconIndex == 0 ? primaryColor : inactiveColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'A → Z',
                      style: TextStyle(
                        color: activeSortIconIndex == 0 ? Colors.white : primaryColor,
                        fontSize: 10, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                
                _buildSortIconButton(icon: Icons.star_border, activeIcon: Icons.star, index: 1),
                const SizedBox(width: 6),
                _buildSortIconButton(icon: Icons.favorite_border, activeIcon: Icons.favorite, index: 2),
                const SizedBox(width: 6),
                _buildSortIconButton(icon: Icons.female, activeIcon: Icons.female, index: 3),
                const SizedBox(width: 6),
                _buildSortIconButton(icon: Icons.male, activeIcon: Icons.male, index: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortIconButton({
    required IconData icon,
    required IconData activeIcon,
    required int index,
  }) {
    bool isActive = activeSortIconIndex == index;
    return GestureDetector(
      onTap: () => setState(() => activeSortIconIndex = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(5),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: isActive ? primaryColor : inactiveColor.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            isActive ? activeIcon : icon,
            size: 13,
            color: isActive ? Colors.white : primaryColor,
          ),
        ),
      ),
    );
  }
}