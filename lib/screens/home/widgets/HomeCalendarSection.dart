import 'package:flutter/material.dart';
import '../../../../core/image/app_colors.dart';
import 'appointment_card.dart';
import 'calendar_day_item.dart';
import 'calendar_day_model.dart';

class HomeCalendarSection extends StatefulWidget {
  final List<CalendarDayModel> days;
  const HomeCalendarSection({super.key, required this.days});

  @override
  State<HomeCalendarSection> createState() => _HomeCalendarSectionState();
}

class _HomeCalendarSectionState extends State<HomeCalendarSection> {
  int selectedCalendarIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 95,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: widget.days.length,
              itemBuilder: (context, index) {
                return CalendarDayItem(
                  dayNumber: widget.days[index].dayNumber,
                  dayName: widget.days[index].dayName,
                  isSelected: selectedCalendarIndex == index,
                  onTap: () {
                    setState(() {
                      selectedCalendarIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              padding: const EdgeInsets.all(16),
              child: const AppointmentCard(),
            ),
          ),
        ],
      ),
    );
  }
}
