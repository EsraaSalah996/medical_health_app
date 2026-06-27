import 'package:flutter/material.dart';
import 'package:medical_health_app/core/data/doctors_data.dart';
// import 'package:medical_health_app/core/models/doctors_model.dart';
import 'package:medical_health_app/screens/favorite_services/widget/favorite_tab_bar.dart';
import 'package:medical_health_app/screens/favorite_services/widget/doctors_list_view.dart';
import 'package:medical_health_app/screens/favorite_services/widget/services_list_view.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: FavoriteTabBar(
            selectedIndex: selectedTab,
            onTabChanged: (index) => setState(() => selectedTab = index),
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: selectedTab == 0
              ? DoctorsListView(doctors: DoctorsData.all)
              : const ServicesListView(),
        ),
      ],
    );
  }
}
