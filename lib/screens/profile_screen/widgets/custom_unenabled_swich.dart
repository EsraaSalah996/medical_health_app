import 'package:flutter/material.dart';

class CustomUnEnabledSwitch extends StatelessWidget {
  const CustomUnEnabledSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      height: 26,
      decoration: BoxDecoration(
        color: const Color(0xffC8D3FF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2,
            top: 2,
            child: Container(
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
