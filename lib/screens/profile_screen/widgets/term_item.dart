import 'package:flutter/material.dart';

class TermItem extends StatelessWidget {
  final int number;
  final String text;

  const TermItem({super.key, required this.number, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$number.",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(text, style: const TextStyle(fontSize: 16, height: 1.6)),
        ),
      ],
    );
  }
}
