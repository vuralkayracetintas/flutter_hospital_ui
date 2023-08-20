import 'package:flutter/material.dart';
import 'package:flutter_hospital_ui/product/constants/color_constatns.dart';
import 'package:flutter_hospital_ui/product/constants/image_constants.dart';
import 'package:flutter_hospital_ui/product/constants/string_constants.dart';
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
                      StringConstants.homeServices,
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
                          color: ColorConstants.doctorCardColorBG,
                          icons: FaIcon(
                            color: ColorConstants.doctorCardColorIC,
                            FontAwesomeIcons.userDoctor,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: ColorConstants.medicalCardColorBG,
                          icons: FaIcon(
                            color: ColorConstants.medicalCardColorIC,
                            FontAwesomeIcons.kitMedical,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: ColorConstants.fileCardColorBG,
                          icons: FaIcon(
                            color: ColorConstants.fileCardColorIC,
                            FontAwesomeIcons.fileMedical,
                            size: 50,
                          ),
                        ),
                        CustomCard(
                          color: ColorConstants.covidCardColorBG,
                          icons: FaIcon(
                            color: ColorConstants.covidCardColorIC,
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
                                ColorConstants.lightBlue,
                                ColorConstants.darkBlue,
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
                                  Text(StringConstants.homeContainerTitle,
                                      textAlign: TextAlign.start,
                                      style: context
                                          .general.textTheme.headlineMedium),
                                  const Text(
                                    StringConstants.homeContainerSubtitle,
                                  )
                                ],
                              ),
                            ),
                            const Expanded(
                              child: Image(
                                image: AssetImage(
                                  ImageConstans.imageDoctor,
                                ),
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
                        StringConstants.upComming,
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
                            containerColor: ColorConstants.turquoiseLight,
                            smallContainerColor: ColorConstants.turquoiseDark,
                          ),
                          CustomAppointmentsContainer(
                              date: '13',
                              day: 'Wed',
                              department: 'Eye Care',
                              doctor: 'Dr. Mim Akhter',
                              time: '10.30 AM',
                              containerColor: ColorConstants.lightGreen,
                              smallContainerColor: ColorConstants.darkGreen),
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
