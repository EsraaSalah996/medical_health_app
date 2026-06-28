import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_colors.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/core/shared_widgets/icon_button.dart';
import 'package:medical_health_app/screens/favorite_services/favorite_screen.dart';
import 'package:medical_health_app/core/shared_widgets/filter_scaffold.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/screens/home/widgets/appointment_card.dart';
import 'package:medical_health_app/screens/home/widgets/calendar_day_item.dart';
import 'package:medical_health_app/screens/home/widgets/calendar_day_model.dart';
import 'package:medical_health_app/screens/home/widgets/doc_card.dart';
import 'package:medical_health_app/screens/home/widgets/dummy_screen.dart';
import 'package:medical_health_app/screens/home/widgets/category_item_app.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = -1;
  int selectedCalendarIndex = 2;

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
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
            // ==========================================
            // ==========================================
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Row(
                children: [
                  CategoryItemApp(
                    imagePath: AppImage.stethoscope,
                    title: 'Doctors',
                    isSelected: true,
                    nextScreen: DummyScreen(title: 'Doctors Screen'),
                  ),
                  const SizedBox(width: 15),
                  CategoryItemApp(
                    imagePath: AppImage.hart,
                    title: 'Favorite',
                    isSelected: false,
                    // nextScreen: DummyScreen(title: 'Favorite Screen'),
                    nextScreen: FilterScaffold(
                      title: 'Favorite',
                      currentFilterIndex: 2,
                      body: FavoriteScreen(),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextFormField(
                        cursorColor: AppColors.primary,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  AppImage.filter,
                                  color: Colors.black,
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset(AppImage.search),
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // ==========================================
            // ==========================================
            Container(
              width: double.infinity,
              color: AppColors.primary,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 95,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: days.length,
                      itemBuilder: (context, index) {
                        return CalendarDayItem(
                          dayNumber: days[index].dayNumber,
                          dayName: days[index].dayName,
                          isSelected: selectedCalendarIndex == index,
                          onTap: () {
                            setState(() {
                              selectedCalendarIndex = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: const AppointmentCard(),
                    ),
                  ),
                ],
              ),
            ),
            // ==========================================
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  DocCard(
                    name: "Dr. Olivia Turner, M.D.",
                    specialty: "Dermato-Endocrinology",
                    rating: "5",
                    reviews: "60",
                    image: AppImage.doctor1,
                  ),
                  const SizedBox(height: 16),
                  DocCard(
                    name: "Dr. Alexander Bennett, Ph.D.",
                    specialty: "Dermato-Genetics",
                    rating: "4.5",
                    reviews: "40",
                    image: AppImage.doctor2,
                  ),
                  const SizedBox(height: 16),
                  DocCard(
                    name: "Dr. Sophia Martinez, Ph.D.",
                    specialty: "Cosmetic Bioengineering",
                    rating: "4.8",
                    reviews: "55",
                    image: AppImage.doctor8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }
}
