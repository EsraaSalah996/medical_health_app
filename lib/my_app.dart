import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/home/home_screen.dart';
// import 'package:medical_health_app/screens/profile_screen/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      // home: ProfileScreen(),
    );
  }
}
