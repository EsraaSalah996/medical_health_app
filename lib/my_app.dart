import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/login_screen/screens/first_login_screen.dart';


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
      home: FirstLoginScreen(),
    );
  }
}

