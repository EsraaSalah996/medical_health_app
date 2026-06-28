import 'package:flutter/material.dart';
import 'package:medical_health_app/core/models/doctors_model.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/screens/doctors/Widgets/doctors_card.dart';

class DoctorsBuilder extends StatelessWidget {
  const DoctorsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. هنا Custom Header
        const SizedBox(height: 16),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemCount: doctors.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              var model = doctors[index];
              return DoctorsItem(model: model);
            },
          ),
        ),

        // 3. هنا ضعي الـ Custom Navigation Bar الخاص بكِ
        ButtonNavigationBar(),
      ],
    );
  }
}
