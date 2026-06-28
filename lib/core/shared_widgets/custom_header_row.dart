import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHeaderRow extends StatelessWidget {
  final String title;
  final Widget? trailingIcon;
  final VoidCallback? onTap;

  const CustomHeaderRow({
    super.key,
    required this.title,
    this.trailingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTap ?? () => Navigator.pop(context),
            child: SvgPicture.asset(
              'assets/icons/arrow back.svg',
              width: 18,
              height: 18,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff2260FF),
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          trailingIcon ?? const SizedBox(width: 24),
        ],
      ),
    );
  }
}
