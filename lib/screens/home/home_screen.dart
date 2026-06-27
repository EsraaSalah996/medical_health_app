import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/filter_scaffold.dart';
import 'package:medical_health_app/screens/favorite_services/favorite_screen.dart';
import 'package:medical_health_app/core/shared_widgets/filter_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget _pageForIndex(int index) {
    switch (index) {
      case 0:
        return const FilterScaffold(
          title: 'A → Z',
          currentFilterIndex: 0,
          body: Center(child: Text('A → Z')),
        );
      case 1:
        return const FilterScaffold(
          title: 'Top Rated',
          currentFilterIndex: 1,
          body: Center(child: Text('Top Rated')),
        );
      case 2:
        return const FavoriteScreen();
      case 3:
        return const FilterScaffold(
          title: 'Female Doctors',
          currentFilterIndex: 3,
          body: Center(child: Text('Female Doctors')),
        );
      case 4:
        return const FilterScaffold(
          title: 'Male Doctors',
          currentFilterIndex: 4,
          body: Center(child: Text('Male Doctors')),
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
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFF1A1A2E),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: FilterSearch(
          onFilterChanged: (index) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => _pageForIndex(index)),
            );
          },
        ),
      ),
    );
  }
}
