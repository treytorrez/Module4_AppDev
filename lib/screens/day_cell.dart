import 'package:flutter/material.dart';
import '../../../enums/month.dart'; // Adjust path
import '../../day_detail_bottom_sheet.dart'; // You'll create this

class DayCell extends StatelessWidget {
  final int day;
  final Month month;
  final int year;

  const DayCell({
    super.key,
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          showModalBottomSheet(
            context: context,
            builder: (
                BuildContext _) { // Use _ if context is not needed inside builder
              return DayDetailBottomSheet(day: day, month: month, year: year);
            },
          ),
      child: Text('$day'),
    );
  }
}