import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/custom_top_screen.dart';
import 'package:medical_health_app/core/shared_widgets/custom_nav_bar.dart';
import 'package:medical_health_app/screens/doctor_info_screen/doctor_info_screen.dart';
import 'package:medical_health_app/core/shared_widgets/container_doctor_info.dart';
import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF0F0FF),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3D5AF1)),
      ),
      home: const HomeScreen(), 

      

    );
  }
}