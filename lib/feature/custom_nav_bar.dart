import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const GNav(tabs: [
      GButton(
        icon: Icons.home,
        text: 'Home',
      ),
      GButton(
        icon: Icons.calendar_month,
        text: 'Calendar',
      ),
      GButton(
        icon: Icons.report,
        text: 'Reports',
      ),
      GButton(
        icon: Icons.notifications,
        text: 'Notifications',
      ),
    ]);
  }
}
