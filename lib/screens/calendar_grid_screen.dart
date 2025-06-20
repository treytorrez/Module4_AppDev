import 'package:flutter/material.dart';
import '../../../widgets/calendar_grid.dart'; // Adjust path as needed

class CalendarGridScreen extends StatelessWidget {
  const CalendarGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calendar")),
      body: const CalendarGrid(),
    );
  }
}