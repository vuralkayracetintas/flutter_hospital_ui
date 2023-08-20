import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.color,
    required this.icons,
  });

  final Color color;
  final FaIcon icons;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: context.padding.low,
        child: icons,
      ),
    );
  }
}
