import 'package:flutter/material.dart';

class LastUpdateText extends StatelessWidget {
  const LastUpdateText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Last Update: 14/08/2024",
      style: TextStyle(
        fontSize: 14,
        color: Color(0xffA6B3FF),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
