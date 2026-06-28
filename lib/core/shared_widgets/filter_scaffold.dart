import 'package:flutter/material.dart';
import 'package:medical_health_app/core/data/doctors_data.dart';
import 'package:medical_health_app/core/shared_widgets/gender_card.dart';
import 'package:medical_health_app/screens/favorite_services/favorite_screen.dart';
import 'package:medical_health_app/core/shared_widgets/filter_search.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';

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
        return FilterScaffold(
          key: ValueKey(index),
          title: 'A → Z',
          currentFilterIndex: 0,
          body: const Center(child: Text('A → Z')),
        );
      case 1:
        return FilterScaffold(
          key: ValueKey(index),
          title: 'Top Rated',
          currentFilterIndex: 1,
          body: const Center(child: Text('Top Rated')),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF4D6FFF)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF1A1A2E),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFF4D6FFF)),
            onPressed: () {},
          ),
        ],
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
