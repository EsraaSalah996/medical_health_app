import 'package:flutter/material.dart';
import 'package:medical_health_app/core/shared_widgets/button_navigation_bar.dart';
import 'package:medical_health_app/core/shared_widgets/container_doctor_info.dart';
import 'package:medical_health_app/core/shared_widgets/filter_scaffold.dart';
import 'package:medical_health_app/core/shared_widgets/filter_search.dart';

class DoctorInfoScreen extends StatefulWidget {
  const DoctorInfoScreen({super.key});

  @override
  State<DoctorInfoScreen> createState() => _DoctorInfoScreenState();
}

class _DoctorInfoScreenState extends State<DoctorInfoScreen> {
  int _activeSort = 0;
  int _activeHeaderIcon = -1;

  static const _primaryColor = Color(0xff2260FF);
  static const _inactiveColor = Color(0xffCAD6FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FF),
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(),
            _buildFilterRow(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 29,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ContainerDoctorInfo(),
                    const SizedBox(height: 16),
                    _buildSection(
                      title: 'Profile',
                      body:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    ),
                    const SizedBox(height: 16),
                    _buildSection(
                      title: 'Career Path',
                      body:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    ),
                    const SizedBox(height: 16),
                    _buildSection(
                      title: 'Highlights',
                      body:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ButtonNavigationBar(),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: _primaryColor,
              size: 18,
            ),
          ),
          const Text(
            'Doctor Info',
            style: TextStyle(
              color: _primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              _buildHeaderIcon(0, 'assets/images/search icon.png'),
              const SizedBox(width: 8),
              _buildHeaderIcon(1, 'assets/images/filter icon.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderIcon(int index, String asset) {
    final isActive = _activeHeaderIcon == index;
    return GestureDetector(
      onTap: () => setState(() => _activeHeaderIcon = isActive ? -1 : index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: isActive
              ? _primaryColor
              : _inactiveColor.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Image.asset(
            asset,
            width: 14,
            height: 14,
            color: isActive ? Colors.white : _primaryColor,
          ),
        ),
      ),
    );
  }

  Widget _buildFilterRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: FilterSearch(
        key: ValueKey(_activeSort),
        initialIndex: _activeSort,
        onFilterChanged: (index) {
          setState(() => _activeSort = index);
          FilterScaffold.navigate(context, index, -1);
        },
      ),
    );
  }

  Widget _buildSection({required String title, required String body}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: _primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          body,
          style: const TextStyle(
            color: Color(0xff000000),
            fontSize: 10,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
