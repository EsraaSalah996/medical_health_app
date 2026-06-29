import 'package:flutter/material.dart';
import 'package:medical_health_app/core/data/doctors_data.dart';
import 'package:medical_health_app/screens/doctors/Widgets/doctors_card.dart';
import 'package:medical_health_app/screens/favorite_services/widget/gender_card.dart';
import 'package:medical_health_app/screens/favorite_services/favorite_screen.dart';
import 'package:medical_health_app/core/shared_widgets/filter_search.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/screens/favorite_services/widget/custom_rating_cart.dart';

class FilterScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final int currentFilterIndex;

  const FilterScaffold({
    required this.title,
    required this.body,
    required this.currentFilterIndex,
    super.key,
  });

  static void _navigate(BuildContext context, int index, int current) {
    if (index == current) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => _pageForIndex(index)),
    );
  }

  static Widget _pageForIndex(int index) {
    switch (index) {
      case 0:
        final az = [...DoctorsData.all]..sort((a, b) => a.name.compareTo(b.name));
        return FilterScaffold(
          key: ValueKey(index),
          title: 'A → Z',
          currentFilterIndex: 0,
          body: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            itemCount: az.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, i) => DoctorsItem(model: az[i]),
          ),
        );
      case 1:
        final sorted = [...DoctorsData.all]
          ..sort((a, b) => (b.rating ?? 0).compareTo(a.rating ?? 0));
        return FilterScaffold(
          key: ValueKey(index),
          title: 'Top Rated',
          currentFilterIndex: 1,
          body: ListView.builder(
            padding: const EdgeInsets.only(bottom: 20),
            itemCount: sorted.length,
            itemBuilder: (context, index) => CustomRatingCard(
              doctorName: sorted[index].name,
              specialty: sorted[index].specialization,
              rating: sorted[index].rating.toString(),
              doctorImagePath: sorted[index].image,
            ),
          ),
        );
      case 2:
        return FilterScaffold(
          key: ValueKey(index),
          title: 'Favorite',
          currentFilterIndex: 2,
          body: FavoriteScreen(key: ValueKey(index)),
        );
      case 3:
        return FilterScaffold(
          title: 'Female',
          currentFilterIndex: 3,
          body: ListView.builder(
            itemCount: DoctorsData.all
                .where((d) => d.gender == 'female')
                .length,
            itemBuilder: (context, index) {
              final doctors = DoctorsData.all
                  .where((d) => d.gender == 'female')
                  .toList();
              return GenderCard(doctor: doctors[index]);
            },
          ),
        );
      case 4:
        return FilterScaffold(
          title: 'Male',
          currentFilterIndex: 4,
          body: ListView.builder(
            itemCount: DoctorsData.all.where((d) => d.gender == 'male').length,
            itemBuilder: (context, index) {
              final doctors = DoctorsData.all
                  .where((d) => d.gender == 'male')
                  .toList();
              return GenderCard(doctor: doctors[index]);
            },
          ),
        );
      default:
        return const SizedBox();
    }
  }

  static Widget _iconCircle(IconData icon) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: const Color(0xFFCAD6FF).withValues(alpha: 0.6),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: const Color(0xFF2260FF), size: 14),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F7FF),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF2260FF),
                  size: 18,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF2260FF),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Row(
                children: [
                  _iconCircle(Icons.search_rounded),
                  const SizedBox(width: 8),
                  _iconCircle(Icons.tune_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: FilterSearch(
              key: ValueKey(currentFilterIndex),
              initialIndex: currentFilterIndex,
              onFilterChanged: (index) =>
                  _navigate(context, index, currentFilterIndex),
            ),
          ),
          Expanded(child: body),
        ],
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }
}
