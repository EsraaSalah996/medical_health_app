import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_colors.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/core/models/doctors_model.dart';
import 'package:medical_health_app/core/shared_widgets/icon_button.dart';

class DoctorsItem extends StatelessWidget {
  const DoctorsItem({super.key, required this.model});

  final DoctorsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFD6E2FF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(model.image, width: 85, height: 85, fit: BoxFit.cover),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  model.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1A66FF),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  model.specialization,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, color: Colors.black54),
                ),
                const SizedBox(height: 12),

                Row(
                  children: [
                    SizedBox(
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1A66FF),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Info',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButtonApp(
                            imagePath: AppImage.calendar,
                            isPressed: true,
                            onTap: () {},
                            backgroundColor: AppColors.background,
                            iconColor: AppColors.isSelected,
                          ),
                          IconButtonApp(
                            imagePath: AppImage.chat,
                            isPressed: true,
                            onTap: () {},
                            backgroundColor: AppColors.background,
                            iconColor: AppColors.isSelected,
                          ),
                          IconButtonApp(
                            imagePath: AppImage.hart,
                            isPressed: true,
                            onTap: () {},
                            backgroundColor: AppColors.background,
                            iconColor: AppColors.isSelected,
                          ),
                          IconButtonApp(
                            imagePath: AppImage.search,
                            isPressed: true,
                            onTap: () {},
                            backgroundColor: AppColors.background,
                            iconColor: AppColors.isSelected,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
