import 'package:flutter/material.dart';
import 'screens/calendar_grid_screen.dart'; // You'll create this

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calendar App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Or your preferred theme
      ),
      home: const CalendarGridScreen(),
    );
  }
}