import 'package:flutter/material.dart';

class FilterSearch extends StatefulWidget {
  final Function(int) onFilterChanged;
  final int initialIndex;
  const FilterSearch({
    required this.onFilterChanged,
    this.initialIndex = 0,
    super.key,
  });

  @override
  State<FilterSearch> createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  int? _tappedIndex;

  int get selectedIndex => _tappedIndex ?? widget.initialIndex;

  final List<Widget> _icons = [
    const Icon(Icons.star_border, size: 18),
    const Icon(Icons.favorite, size: 18),
    const Icon(Icons.female, size: 18),
    const Icon(Icons.male, size: 18),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Sort By',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(width: 8),
        // A→Z pill (index 0)
        _buildPill(0),
        const SizedBox(width: 6),
        // Icon circles (index 1-4)
        ...List.generate(_icons.length, (i) => _buildCircle(i + 1, _icons[i])),
      ],
    );
  }

  Widget _buildPill(int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() => _tappedIndex = index);
        widget.onFilterChanged(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2260FF) : const Color(0xFFCAD6FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'A→Z',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF2260FF),
          ),
        ),
      ),
    );
  }

  Widget _buildCircle(int index, Widget icon) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() => _tappedIndex = index);
        widget.onFilterChanged(index);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF2260FF) : const Color(0xFFCAD6FF),
          shape: BoxShape.circle,
        ),
        child: IconTheme(
          data: IconThemeData(
            color: isSelected ? Colors.white : const Color(0xFF2260FF),
            size: 18,
          ),
          child: icon,
        ),
      ),
    );
  }
}
