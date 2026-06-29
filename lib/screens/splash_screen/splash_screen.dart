
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/welcome%20screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF2260FF), 
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo app.png'), 
                width: 130,
                height: 130, 
              ),
              SizedBox(height: 20),
              
              Image(
                image: AssetImage('assets/images/Skin.png'),
              ),
              SizedBox(height:10),
              Image(image: AssetImage("assets/images/Firts.png"),
              ),
              SizedBox(height:25),
              Image(image:AssetImage("assets/images/Dermatology center.png"),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}