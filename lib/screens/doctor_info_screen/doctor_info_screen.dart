
import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/container_doctor_info.dart';
import 'package:medical_health_app/core/shared_widgets/custom_top_screen.dart';
import 'package:medical_health_app/core/shared_widgets/container_doctor_info.dart';
import 'package:medical_health_app/core/shared_widgets/custom_nav_bar.dart';


class DoctorInfoScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:SingleChildScrollView(
      child:Column(
        children: [
        CustomTopScreen(title: "Doctor Info"),
        SizedBox(height:10),
        ContainerDoctorInfo(),
        SizedBox(height:20),
        Column(
  crossAxisAlignment: CrossAxisAlignment.start, 
  children: [
    const Text(
      'Profile',
      style: TextStyle(
        color: Color(0xff2260FF),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(height:4), 
    SizedBox(
      width: 285, 
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        style: TextStyle(
          color:Color(0xff000000),
          fontSize: 10,
          height: 1.4, 
        ),
      ),
    ),

    const SizedBox(height: 16), 
    const Text(
      'Career Path',
      style: TextStyle(
        color: Color(0xff2260FF),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(height: 4),
    SizedBox(
      width: 285,
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        style: TextStyle(
          color:Color(0xff000000),
          fontSize: 10,
          height: 1.4,
        ),
      ),
    ),

    const SizedBox(height: 16),
    const Text(
      'Highlights',
      style: TextStyle(
        color: Color(0xff2260FF),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    ),
    const SizedBox(height: 4),
    SizedBox(
      width: 285,
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        style: TextStyle(
          color:Color(0xff000000),
          fontSize: 10,
          height: 1.4,
        ),
      ),
    ),
  ],
),
        ],
      ),
    ),
    bottomNavigationBar: const CustomNavBar(),
    );
  }
}