import 'package:flutter/material.dart';
import 'package:medical_health_app/core/image/app_colors.dart';
import 'package:medical_health_app/core/image/app_image.dart';
import 'package:medical_health_app/core/shared_widgets/filter_scaffold.dart';
import 'package:medical_health_app/screens/doctors/doctors_screen.dart';
import 'package:medical_health_app/screens/favorite_services/favorite_screen.dart';
import 'package:medical_health_app/screens/home/widgets/category_item_app.dart';

class HomeCategoriesAndSearch extends StatelessWidget {
  const HomeCategoriesAndSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        children: [
          CategoryItemApp(
            imagePath: AppImage.stethoscope,
            title: 'Doctors',
            isSelected: true,
            nextScreen: DoctorsScreen(),
          ),
          const SizedBox(width: 15),
          CategoryItemApp(
            imagePath: AppImage.hart,
            title: 'Favorite',
            isSelected: false,
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
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
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
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
