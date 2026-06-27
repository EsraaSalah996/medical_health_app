import 'package:flutter/material.dart';

class CustomNotificationRow extends StatelessWidget {
  final String title;
  final Widget switchWidget;

  const CustomNotificationRow({
    super.key,
    required this.title,
    required this.switchWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
          ),
          switchWidget,
        ],
      ),
    );
  }
}
