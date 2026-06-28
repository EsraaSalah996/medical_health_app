import 'package:flutter/material.dart';
import 'package:medical_health_app/core/models/doctors_model.dart';

class FavoriteDoctorCard extends StatelessWidget {
  final DoctorsModel doctor;

  const FavoriteDoctorCard({required this.doctor, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 155,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFCAD6FF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 46,
            backgroundImage: AssetImage(doctor.image),
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.workspace_premium,
                      color: Color(0xFF2260FF),
                      size: 18,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Professional Doctor',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctor.name,
                              style: const TextStyle(
                                color: Color(0xFF2260FF),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              doctor.specialization,
                              style: const TextStyle(
                                color: Color(0xFF8A8A8A),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Color(0xFF2260FF),
                        size: 22,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2260FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      // padding: const EdgeInsets.symmetric(vertical: 3),
                    ),
                    child: const Text(
                      'Make Appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
