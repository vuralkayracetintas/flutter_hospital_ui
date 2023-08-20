import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello 👋🏻',
              style: context.general.textTheme.headlineSmall,
              textAlign: TextAlign.start,
            ),
            Text(
              'Welcome to \nFlutter Hospital UI',
              style: context.general.textTheme.headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
          ],
        ),
        CircleAvatar(
          radius: 30,
        ),
      ],
    );
  }
}
