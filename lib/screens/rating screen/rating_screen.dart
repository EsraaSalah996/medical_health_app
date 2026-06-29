import 'package:flutter/material.dart';
import 'package:medical_health_app/core/data/doctors_data.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/screens/favorite_services/widget/custom_rating_cart.dart';
import 'package:medical_health_app/core/shared_widgets/custom_top_screen.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final doctors = [...DoctorsData.all]
      ..sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomTopScreen(title: "Rating"),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: doctors.length,
                padding: const EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) {
                  final doctor = doctors[index];
                  return CustomRatingCard(
                    doctorName: doctor.name,
                    specialty: doctor.specialization,
                    rating: doctor.rating.toString(),
                    doctorImagePath: doctor.image,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }
}
