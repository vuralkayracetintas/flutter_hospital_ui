import 'package:flutter/material.dart';
import 'package:flutter_hospital_ui/feature/custom_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: context.sized.height * 0.01,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
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
                  const CircleAvatar(),
                ],
              ),
            ),
            Padding(
              padding: context.padding.low,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.filter_list_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Services'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: context.padding.low,
                        child: const FaIcon(
                          FontAwesomeIcons.userDoctor,
                          size: 50,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: context.padding.low,
                        child: const FaIcon(
                          FontAwesomeIcons.kitMedical,
                          size: 50,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: context.padding.low,
                        child: const FaIcon(
                          FontAwesomeIcons.fileMedical,
                          size: 50,
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.amber,
                      child: Padding(
                        padding: context.padding.low,
                        child: const FaIcon(
                          FontAwesomeIcons.virusCovid,
                          size: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
