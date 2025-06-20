import 'package:flutter/material.dart';
import '../enums/month.dart'; // Adjust path
import '../screens/month_view.dart'; // You'll create this

class CalendarGrid extends StatelessWidget {
  const CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, monthIndex) {
        final month = Month.values[monthIndex % 12];
        final year = DateTime
            .now()
            .year + (monthIndex ~/ 12);
        return MonthView(month: month, year: year);
      },
    );
  }
}