import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_colors.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/core/shared_widgets/icon_button.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/screens/home/widgets/calendar_day_model.dart';
import 'package:medical_health_app/screens/home/widgets/HomeCalendarSection.dart';

import 'widgets/home_categories_and_search.dart';
import 'widgets/home_doctors_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;

  final List<CalendarDayModel> days = [
    CalendarDayModel(dayNumber: "9", dayName: "MON"),
    CalendarDayModel(dayNumber: "10", dayName: "TUE"),
    CalendarDayModel(dayNumber: "11", dayName: "WED"),
    CalendarDayModel(dayNumber: "12", dayName: "THU"),
    CalendarDayModel(dayNumber: "13", dayName: "FRI"),
    CalendarDayModel(dayNumber: "14", dayName: "SAT"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 20,
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppImage.profil,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Hi, Welcome Back',
                  style: TextStyle(fontSize: 12, color: AppColors.card),
                ),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButtonApp(
              imagePath: AppImage.invitation,
              isPressed: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = (selectedIndex == 0) ? -1 : 0;
                });
              },
            ),
            const SizedBox(width: 10),
            IconButtonApp(
              imagePath: AppImage.settingSvg,
              isPressed: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = (selectedIndex == 1) ? -1 : 1;
                });
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeCategoriesAndSearch(),
            const SizedBox(height: 10),
            HomeCalendarSection(days: days),
            const HomeDoctorsList(),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }
}
