import 'package:flutter/material.dart';
import 'package:medical_health_app/core/data/doctors_data.dart';
import 'package:medical_health_app/core/shared_widgets/filter_scaffold.dart';
import 'package:medical_health_app/screens/doctors/Widgets/doctors_card.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final az = [...DoctorsData.all]..sort((a, b) => a.name.compareTo(b.name));

    return FilterScaffold(
      title: 'Doctors',
      currentFilterIndex: 0,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        itemCount: az.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, i) => DoctorsItem(model: az[i]),
      ),
    );
  }
}
