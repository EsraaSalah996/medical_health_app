
import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_top_screen.dart';
import 'package:medical_health_app/core/shared_widgets/custom_nav_bar.dart';
import 'package:medical_health_app/screens/doctor_info_screen/doctor_info_screen.dart';
import 'package:medical_health_app/core/shared_widgets/container_doctor_info.dart';

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:DoctorInfoScreen(),
    );
  }
}