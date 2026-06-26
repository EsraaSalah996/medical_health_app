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

  final List<Widget> filterIcons = [
    Text(
      'A→Z',
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    ), //0
    Icon(Icons.star_border, size: 18),
    Icon(Icons.favorite, size: 18),
    Icon(Icons.female, size: 18),
    Icon(Icons.male, size: 18),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Sort By ', style: TextStyle(fontSize: 12)),
        SizedBox(width: 5),
        ...List.generate(filterIcons.length, (index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() => _tappedIndex = index);
              widget.onFilterChanged(index);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFF4D6FFF) : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Color(0xFF4D6FFF) : Colors.grey.shade300,
                ),
              ),
              child: IconTheme(
                data: IconThemeData(
                  color: isSelected ? Colors.white : Colors.grey,
                ),
                child: filterIcons[index],
              ),
            ),
          );
        }),
      ],
    );
  }
}
