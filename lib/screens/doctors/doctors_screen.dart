import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_colors.dart';
import 'package:medical_health_app/screens/doctors/Widgets/doctors_builder.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(child: DoctorsBuilder()),
    );
  }
}
