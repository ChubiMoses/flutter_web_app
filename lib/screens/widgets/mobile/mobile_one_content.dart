import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MobileOneContent extends StatelessWidget {
  const MobileOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Drei einfache Schritte \n zu deinem neuen Job",
            style: AppStyles.mediumTitleTextStyle),
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
                 padding: const EdgeInsets.symmetric(horizontal: 10),
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
                          left: 125,
                          bottom: 100,
                          child: Text(
                            "Erstellen dein Lebenslauf",
                            style:  AppStyles.mediumTextStyle.copyWith(
                                  fontSize:  18 , 
                            ))  ),
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
                          left: 20,
                          child: Text(
                            "2.",
                            style: AppStyles.numStyle,
                          ),
                        ),
                         Positioned(
                            top: 75,
                            left: 110,
                            child: Text(
                              "Erstellen dein Lebenslauf",
                              style: AppStyles.mediumTextStyle.copyWith(
                                fontSize:  18 , 
                              ),
                            )),
                        Positioned(
                          left: 100,
                          bottom: 50,
                          child: SvgPicture.asset(
                            'assets/svgs/undraw_task_31wc.svg',
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
                          left: 10,
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
                                "Mit nur einem Klick bewerben",
                                style:  AppStyles.mediumTextStyle.copyWith(
                                fontSize:  18 , 
                                ))
                            )),
                        Positioned(
                          right: 0,
                          top: 150,
                          child: SvgPicture.asset(
                            'assets/svgs/undraw_personal_file_222m.svg',
                            width: 240,
                            height: 230,
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
