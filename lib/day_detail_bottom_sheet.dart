import 'package:flutter/material.dart';
import '../../enums/month.dart'; // Adjust path

class DayDetailBottomSheet extends StatelessWidget {
  final int day;
  final Month month;
  final int year;

  const DayDetailBottomSheet({
    super.key,
    required this.day,
    required this.month,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Example alignment
        crossAxisAlignment: CrossAxisAlignment.center, // Example alignment
        children: [
          ListTile(
            title: Text(
              '${month.name[0].toUpperCase()}${month.name.substring(
                  1)} $day, $year',
              textAlign: TextAlign.center, // Example alignment
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          const SizedBox(height: 20), // Spacing
          ElevatedButton(
            child: const Text('Close'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}