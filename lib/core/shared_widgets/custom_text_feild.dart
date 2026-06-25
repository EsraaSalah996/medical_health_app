import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String title;
  final bool isPassword;
  const CustomTextFeild({
    super.key,
    required this.title,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
          ),
        ),
      ],
    );
  }
}
