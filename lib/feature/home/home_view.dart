import 'package:flutter/material.dart';
import 'package:flutter_hospital_ui/feature/custom_nav_bar.dart';
import 'package:flutter_hospital_ui/product/widgets/custom_appointmet_container.dart';
import 'package:flutter_hospital_ui/product/widgets/custom_text_field.dart';
import 'package:flutter_hospital_ui/product/widgets/welcome_title.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding.normal,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const WelcomeTitle(),
                const CustomTextField(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Services'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          color: const Color.fromARGB(255, 108, 178, 194),
                          child: Padding(
                            padding: context.padding.low,
                            child: const FaIcon(
                              color: Color.fromARGB(255, 30, 155, 184),
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
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 168, 229, 242),
                                Color.fromARGB(255, 48, 203, 237),
                              ]),
                              borderRadius: context.border.normalBorderRadius),
                          height: 200,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: context.padding.normal,
                              child: Column(
                                children: [
                                  Text('Get the best \nmedical services',
                                      textAlign: TextAlign.start,
                                      style: context
                                          .general.textTheme.headlineMedium
                                          ?.copyWith(color: Colors.white)),
                                  const Text(
                                    'We provide best quality medical \nservice without further cost.',
                                  )
                                ],
                              ),
                            ),
                            const Expanded(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/doctor_copy-removebg-preview.png'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    FittedBox(
                      child: Text(
                        'Upcoming Appointments',
                        style: context.general.textTheme.titleLarge,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            CustomAppointmentsContainer(
                              date: '12',
                              day: 'Tue',
                              department: 'Depression',
                              doctor: 'Dr. Mim Akhter',
                              time: '9.30 AM',
                              containerColor:
                                  Color.fromARGB(255, 101, 226, 233),
                              smallContainerColor:
                                  Color.fromARGB(255, 46, 179, 186),
                            ),
                            CustomAppointmentsContainer(
                                date: '13',
                                day: 'Wed',
                                department: 'Eye Care',
                                doctor: 'Dr. Mim Akhter',
                                time: '10.30 AM',
                                containerColor:
                                    Color.fromARGB(255, 175, 218, 108),
                                smallContainerColor:
                                    Color.fromARGB(255, 116, 165, 38)),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
