import 'package:flutter/material.dart';
import 'package:medical_health_app/core/models/doctors_model.dart';

class GenderCard extends StatelessWidget {
  final DoctorsModel doctor;

  const GenderCard({required this.doctor, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: 310,
        height: 135,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFFCAD6FF),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            //  صورة الدكتور
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctor.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.person, size: 40),
                ),
              ),
            ),

            const SizedBox(width: 12),

            //  الاسم والتخصص والأزرار
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // الاسم
                  Text(
                    doctor.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2260FF),
                    ),
                  ),

                  const SizedBox(height: 6),

                  // التخصص
                  Text(
                    doctor.specialization,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w300,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ③ الأزرار
                  Row(
                    children: [
                      // Info Button
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF4D6FFF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Info',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const SizedBox(width: 6),

                      // الأيقونات الصغيرة
                      IconBtn(icon: Icons.calendar_today_outlined),
                      IconBtn(icon: Icons.info_outline),
                      IconBtn(icon: Icons.help_outline),
                      IconBtn(icon: Icons.favorite_border),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  أيقونة دايرية صغيرة
class IconBtn extends StatelessWidget {
  final IconData icon;

  const IconBtn({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(icon, size: 16, color: const Color(0xFF4D6FFF)),
    );
  }
}
