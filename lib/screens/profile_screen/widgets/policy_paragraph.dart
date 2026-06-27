import 'package:flutter/material.dart';

class PolicyParagraph extends StatelessWidget {
  final String text;

  const PolicyParagraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        // fontWeight: FontWeight.w200,
        height: 1.6,
        color: Color(0xff000000),
      ),
    );
  }
}
