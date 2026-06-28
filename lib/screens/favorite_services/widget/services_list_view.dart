import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/favorite_services/widget/service_card.dart';

class ServicesListView extends StatefulWidget {
  const ServicesListView({super.key});

  @override
  State<ServicesListView> createState() => _ServicesListViewState();
}

class _ServicesListViewState extends State<ServicesListView> {
  final List<Map<String, dynamic>> services = [
    {'title': 'Dermato-Endocrinology', 'expanded': true},
    {'title': 'Cosmetic Bioengineering', 'expanded': false},
    {'title': 'Dermato-Genetics', 'expanded': false},
    {'title': 'Solar Dermatology', 'expanded': false},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ServiceCard(
          title: services[index]['title'],
          isExpanded: services[index]['expanded'],
          onTap: () {
            setState(() {
              services[index]['expanded'] = !services[index]['expanded'];
            });
          },
        );
      },
    );
  }
}
