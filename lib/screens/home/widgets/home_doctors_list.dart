import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/screens/home/widgets/doc_card.dart';

class HomeDoctorsList extends StatelessWidget {
  const HomeDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          DocCard(
            name: "Dr. Olivia Turner, M.D.",
            specialty: "Dermato-Endocrinology",
            rating: "5",
            reviews: "60",
            image: AppImage.doctor1,
          ),
          const SizedBox(height: 16),
          DocCard(
            name: "Dr. Alexander Bennett, Ph.D.",
            specialty: "Dermato-Genetics",
            rating: "4.5",
            reviews: "40",
            image: AppImage.doctor2,
          ),
          const SizedBox(height: 16),
          DocCard(
            name: "Dr. Sophia Martinez, Ph.D.",
            specialty: "Cosmetic Bioengineering",
            rating: "4.8",
            reviews: "55",
            image: AppImage.doctor8,
          ),
        ],
      ),
    );
  }
}
