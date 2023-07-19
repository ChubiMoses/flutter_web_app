import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileTwoContent extends StatelessWidget {
  const MobileTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Drei einfache Schritte zur deimem neuen  Mitarbeiter",
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
                          left: 130,
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
                top: 260,
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
                            child: Text(
                              "Erstellen dein Lebenslauf",
                             style: AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                                ),
                              )),
                        Positioned(
                          left: 100,
                          bottom: 80,
                          child: SvgPicture.asset(
                            'assets/svgs/m2.svg',
                            height: 150,
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
                top: 500,
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
                            top: 120,
                            left: 175,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                "Wähle deinen neuen Mitarbeiter aus",
                                style: AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                                ),
                         ))),
                        Positioned(
                          left: 80,
                          top: 180,
                          child: SvgPicture.asset(
                            'assets/svgs/m1.svg',
                            width: 250,
                            height: 220,
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
