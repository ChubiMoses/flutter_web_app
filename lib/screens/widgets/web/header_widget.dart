import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/screens/widgets/appbar_widget.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';

class WebHearder extends StatelessWidget {
  const WebHearder({super.key});

  @override
  Widget build(BuildContext context) {
      return  Column(
        children: [
          const AppBarWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 200,
                    child: Text("Deine Job Website", 
                    style: AppStyles.headerTextStyle)),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: AppColors.buttonGradient
                      ),
                        height: 30.0,
                        width: 190,
                        child: const Center(
                          child: Text(
                            "Kostenlos Registrieren",
                            style:AppStyles.buttonlabelStyle
                          ),
                        ),
                      ),
                    ),
                ],
              ), 
              const SizedBox(width: 70,),
            CircleAvatar(
              radius: 150,
              backgroundColor: AppColors.primaryTextColor,
              child: SvgPicture.asset(
                'assets/svgs/hand_web.svg',
                width: 500,
                ),
            ),
            ],
          ),
        ],
      );
                    
  }
}