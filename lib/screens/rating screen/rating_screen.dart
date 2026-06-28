
import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_nav_bar.dart';
import 'package:medical_health_app/core/shared_widgets/custom_rating_cart.dart';
import 'package:medical_health_app/core/shared_widgets/custom_top_screen.dart';
import 'package:medical_health_app/core/shared_widgets/data_doctor_rating.dart';

class RatingScreen extends StatelessWidget{
  const RatingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomTopScreen(title: "Rating"),
            const SizedBox(height: 10),
            
            Expanded(
              child: ListView.builder(
                itemCount: doctorsList.length,
                padding: const EdgeInsets.only(bottom: 16),
                itemBuilder: (context, index) {
                  final doctor = doctorsList[index];
                  
                  return CustomRatingCard(
                    doctorName: doctor["name"]!,
                    specialty: doctor["specialty"]!,
                    rating: doctor["rating"]!,
                    doctorImagePath: doctor["image"]!, 
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:CustomNavBar(),
    );
  }
}
