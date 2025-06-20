import 'package:flutter/material.dart';
import '../../../enums/month.dart'; // Adjust path
import 'day_cell.dart'; // You'll create this

class MonthView extends StatelessWidget {
  final Month month;
  final int year;

  const MonthView({super.key, required this.month, required this.year});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: Text(
            "${month.name[0].toUpperCase()}${month.name.substring(1)} $year",
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
          ),
          itemCount: month.dayCount,
          // Assuming month.dayCount exists
          itemBuilder: (context, dayIndex) {
            return DayCell(
              day: dayIndex + 1,
              month: month,
              year: year,
            );
          },
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}