import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileThreeContent extends StatelessWidget {
  const MobileThreeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Drei einfache Schritte zur Vermittlung neuer Mitarbeiter",
            textAlign: TextAlign.center, style: AppStyles.mediumTitleTextStyle),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 1000,
          child: Stack(
            children: [
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    children: [
                      const Positioned(
                        top: 80,
                        left: 0,
                        child: CircleAvatar(
                          backgroundColor: AppColors.numAvatarColor,
                          radius: 80,
                          child: Text(
                            "1.",
                            style: AppStyles.numStyle,
                          ),
                        ),
                      ),
                       Positioned(
                          left: 140,
                          bottom: 80,
                          child: SizedBox(
                              width: 250,
                              child: Text(
                                "Erstellen dein Unternehmensprofil",
                               style: AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                                ),
                         ))),
                      Positioned(
                        top: 0,
                        right: 20,
                        child: SvgPicture.asset(
                          'assets/svgs/undraw_Profile_data_re_v81r.svg',
                          width: 240,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 250,
                child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 0,
                          left: 80,
                          child: Text(
                            "2.",
                            style: AppStyles.numStyle,
                          ),
                        ),
                         Positioned(
                            top: 75,
                            left: 170,
                            child: SizedBox(
                              width: 250,
                              child: Text(
                                "Erhalte Vermittlungs- angebot von Arbeitgeber",
                                style: AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                                ),
                         ))),
                        Positioned(
                          left: 150,
                          bottom: 30,
                          child: SvgPicture.asset(
                            'assets/svgs/m4.svg',
                            height: 130,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Positioned(
                top: 550,
                child: SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 0,
                          left: 0,
                          child: CircleAvatar(
                            backgroundColor: AppColors.numAvatarColor,
                            radius: 120,
                            child: Text(
                              "3.",
                              style: AppStyles.numStyle,
                            ),
                          ),
                        ),
                         Positioned(
                            top: 100,
                            left: 170,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                "Vermittlung nach Provision oder Stundenlohn",
                                style: AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                                ),
                         ))),
                        Positioned(
                          right: 30,
                          top: 190,
                          child: SvgPicture.asset(
                            'assets/svgs/m3.svg',
                            width: 240,
                            height: 210,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
