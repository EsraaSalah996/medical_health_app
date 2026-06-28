import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFeild extends StatelessWidget {
  final String label;
  final String hintText;
  final bool isPassword;
  final Color hintColor;

  const CustomTextFeild({
    super.key,
    required this.label,
    this.hintText = "*************",
    this.isPassword = false,
    this.hintColor = const Color(0xff2F63F5),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 14),

          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffECF1FF),

              hintText: hintText,
              hintStyle: TextStyle(
                color: hintColor,
                fontSize: 20,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
              ),

              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),

              suffixIconConstraints: const BoxConstraints(
                minWidth: 60,
                minHeight: 60,
              ),

              suffixIcon: isPassword
                  ? const Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Icon(
                        Icons.visibility_off_outlined,
                        size: 22,
                        color: Colors.black54,
                      ),
                    )
                  : null,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
