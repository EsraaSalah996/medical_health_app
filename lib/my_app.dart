import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/login_screen/screens/first_login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstLoginScreen(),
    );
  }
}
