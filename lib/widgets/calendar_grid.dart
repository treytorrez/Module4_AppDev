import 'package:flutter/material.dart';
import '../enums/month.dart';
// if you use it later

class CalendarGrid extends StatelessWidget {
  const CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calendar")),
      body: ListView.builder(
        itemBuilder: (context, monthIndex) {
          final month = Month.values[monthIndex % 12];
          final year = DateTime.now().year + (monthIndex ~/ 12);
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
                itemBuilder: (context, dayIndex) => TextButton(
                  // alignment: Alignment.center,
                  // onPressed: () =>  debugPrint('${month.name} $dayIndex $year pressed'),
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          children: [

                        ListTile(
                          title: Text(
                            '${month.name[0].toUpperCase()}${month.name.substring(1)} ${dayIndex + 1}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),

                              ElevatedButton(
                                child: const Text('Close'),
                                onPressed: () => Navigator.pop(context),
                              ),
                          ]
                        ),
                      );
                    },
                  ),
                  child: Text('${dayIndex + 1}'),
                ),
              ),
              const SizedBox(height: 24),
            ],
          );
        },
      ),
    );
  }
}
