import 'package:flutter/material.dart';
import 'package:medical_health_app/screens/home/widgets/dashed_line_painter.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 8),
              child: const Text(
                '11 Wednesday - Today',
                style: TextStyle(
                  color: Color(0xFF1B62F3),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          buildTimelineRow('9 AM', hasDivider: true),
          const SizedBox(height: 12),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 45, // خليناها ثابتة زي الـ ميثود تحت عشان تظبط المحاذاة
                child: Text(
                  '10 AM',
                  style: TextStyle(
                    color: Color(0xFF1B62F3),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFC4D7FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 1. لفيت اسم الدكتور بـ Expanded عشان ياخد المساحة المتاحة بس وميزقش الأيقونات
                          Expanded(
                            child: const Text(
                              'Dr. Olivia Turner, M.D.',
                              style: TextStyle(
                                color: Color(0xFF1B62F3),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow
                                  .ellipsis, // هيحط نقاط ... لو الاسم طويل جداً
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ), // مسافة أمان بين الاسم والأيقونات
                          // 2. منعنا الـ Row ده من إنه يفرش بالعرض
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                size: 16,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 6),
                              Icon(
                                Icons.cancel_outlined,
                                size: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Treatment and prevention of skin and photodermatitis.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          buildTimelineRow('11 AM', hasDivider: true),
          const SizedBox(height: 16),
          buildTimelineRow('12 AM', hasDivider: true),
        ],
      ),
    );
  }

  Widget buildTimelineRow(String time, {required bool hasDivider}) {
    return Row(
      children: [
        SizedBox(
          width: 45,
          child: Text(
            time,
            style: const TextStyle(
              color: Color(0xFF1B62F3),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 12), // ضفت دي عشان تتماشى مع الـ 10 AM بالظبط
        if (hasDivider)
          Expanded(child: CustomPaint(painter: DashedLinePainter())),
      ],
    );
  }
}
