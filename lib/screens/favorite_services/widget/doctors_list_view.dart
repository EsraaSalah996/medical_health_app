import 'package:flutter/material.dart';
import 'package:medical_health_app/core/models/doctors_model.dart';
import 'package:medical_health_app/core/shared_widgets/favorite_doctor_card.dart';

class DoctorsListView extends StatelessWidget {
  final List<DoctorsModel> doctors;

  const DoctorsListView({required this.doctors, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 20),
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return FavoriteDoctorCard();
      },
    );
  }
}
