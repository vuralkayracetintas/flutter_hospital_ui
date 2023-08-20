import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomAppointmentsContainer extends StatelessWidget {
  const CustomAppointmentsContainer({
    super.key,
    required this.day,
    required this.date,
    required this.time,
    required this.doctor,
    required this.department,
    required this.containerColor,
    required this.smallContainerColor,
  });

  final String day;
  final String date;
  final String time;
  final String doctor;
  final String department;
  final Color containerColor;
  final Color smallContainerColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: context.border.normalBorderRadius,
                  color: containerColor),
              width: context.general.mediaQuery.size.width * 0.8),
          Row(
            children: [
              Padding(
                padding: context.padding.low,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: context.border.normalBorderRadius,
                      color: smallContainerColor),
                  height: context.sized.height,
                  width: context.sized.width * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(date, style: context.general.textTheme.titleLarge),
                      Text(day),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: context.general.textTheme.titleMedium,
                  ),
                  Text(
                    doctor,
                    maxLines: 1,
                    style: context.general.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    department,
                    style: context.general.textTheme.titleMedium,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
