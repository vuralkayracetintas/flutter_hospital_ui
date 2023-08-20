import 'package:flutter/material.dart';
import 'package:flutter_hospital_ui/product/widgets/custom_appointmet_container.dart';
import 'package:flutter_hospital_ui/product/widgets/custom_card.dart';
import 'package:flutter_hospital_ui/product/widgets/custom_text_field.dart';
import 'package:flutter_hospital_ui/product/widgets/welcome_title.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  Padding(
                    padding: context.padding.low,
                    child: Text(
                      'Services',
                      style: context.general.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: context.padding.onlyTopLow,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCard(
                          color: Color.fromARGB(255, 98, 218, 245),
                          icons: FaIcon(
                            color: Color.fromARGB(255, 24, 125, 147),
                            FontAwesomeIcons.userDoctor,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: Color.fromARGB(255, 243, 168, 55),
                          icons: FaIcon(
                            color: Color.fromARGB(255, 177, 124, 43),
                            FontAwesomeIcons.kitMedical,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: Color.fromARGB(255, 55, 165, 255),
                          icons: FaIcon(
                            color: Color.fromARGB(255, 40, 96, 143),
                            FontAwesomeIcons.fileMedical,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: Color.fromARGB(255, 252, 70, 57),
                          icons: FaIcon(
                            color: Color.fromARGB(255, 150, 44, 37),
                            FontAwesomeIcons.virusCovid,
                            size: 50,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: context.padding.onlyTopLow,
                    child: Stack(
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
                  ),
                  Padding(
                    padding: context.padding.onlyTopLow,
                    child: FittedBox(
                      child: Text(
                        'Upcoming Appointments',
                        style: context.general.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
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
                            containerColor: Color.fromARGB(255, 101, 226, 233),
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
    );
  }
}
