import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class WebThreeContent extends StatelessWidget {
  const WebThreeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const Text("Drei einfache Schritte \n zu deinem neuen Job", 
          style: AppStyles.mediumTitleTextStyle),
          const SizedBox(height: 80,),
          SizedBox(
            height: 1000,
              child: Stack(
              children: [
                  SizedBox(
                    height: 300,
                    width:900,
                    child: Stack(
                      children:  [
                         const Positioned(
                          left: 0,
                          child: CircleAvatar(
                            backgroundColor: AppColors.numAvatarColor,
                            radius: 80,
                            child: Text("1.", style: AppStyles.numStyle,),
                          ),
                        ),
                          const Positioned(
                          left: 130,
                          bottom: 175,
                          child: Text("Erstellen dein Lebenslauf", 
                          style:AppStyles.mediumTextStyle,)), 
            
                          Positioned(
                            left:380,
                            child: SvgPicture.asset(
                            'assets/svgs/undraw_Profile_data_re_v81r.svg',
                            width: 240,
                            ),
                          ),
                      ],
                    ),
                  ),
            
                  const SizedBox(width: 50,),
            
                  Positioned(
                    top: 430,
                    child: SizedBox(
                      height: 300,
                      width:800,
                      child: Stack(
                        children:  [
                          const Positioned(
                            right: 220,
                            bottom: 140,
                            child: Text("2.", style: AppStyles.numStyle,),
                          ),
                          const Positioned(
                            right: 0,
                            bottom: 160,
                            child: Text("Erstellen dein Lebenslauf", 
                            style:AppStyles.mediumTextStyle,)), 
                  
                            Positioned(
                              left: 110,
                              child: SvgPicture.asset(
                              'assets/svgs/m4.svg',
                              width: 230,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 50,),
                  Positioned(
                    top: 800,
                    child: SizedBox(
                      height: 300,
                      width:750,
                      child: Stack(
                        children:  [
                          const Positioned(
                            left: 0,
                            child: CircleAvatar(
                              backgroundColor: AppColors.numAvatarColor,
                              radius: 100,
                              child: Text("3.", style: AppStyles.numStyle,),
                            ),
                          ),
                            const Positioned(
                            left: 150,
                            bottom: 160,
                            child: SizedBox(
                              width: 200,
                              child: Text("Mit nur einem Klick bewerben", 
                              style:AppStyles.mediumTextStyle,),
                            )), 
                  
                            Positioned(
                              right: 40,
                              child: SvgPicture.asset(
                              'assets/svgs/m3.svg',
                              width: 240,
                              height: 230,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),

                    Positioned(
                    top: 160,
                    left: 90,
                    child: SvgPicture.asset(
                    'assets/svgs/line2.svg',
                    height: 300,
                    ),
                  ),

                  Positioned(
                    top: 600,
                    left: 110,
                    child: SvgPicture.asset(
                    'assets/svgs/line1.svg',
                    height: 200,
                    ),
                  ),
                 ],
              ),
            ),
      ],
    );
  }
}