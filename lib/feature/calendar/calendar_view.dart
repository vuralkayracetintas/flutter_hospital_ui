import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime firstDay = DateTime.utc(2020, 1, 1);
    DateTime focusedDate = DateTime.now();
    final DateTime lastDay = DateTime(DateTime.now().year + 5);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: context.padding.low,
            child: TableCalendar(
              focusedDay: focusedDate,
              firstDay: firstDay,
              lastDay: lastDay,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(context.sized.width * 0.8, 50),
            ),
            onPressed: () {},
            child: Text('Create an Appointment'),
          )
        ],
      ),
    );
  }
}
