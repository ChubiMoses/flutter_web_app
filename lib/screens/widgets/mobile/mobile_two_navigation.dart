
import 'package:test/screens/mobile/mobile_one_screen.dart';
import 'package:test/screens/mobile/mobile_three_screen.dart';
import 'package:test/screens/mobile/mobile_two_screen.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MobileTwoNavigation extends StatelessWidget {
  const MobileTwoNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              GestureDetector(
                onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MobileOneScreen())),
                    child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8), 
                        bottomLeft: Radius.circular(8)),
                        color: AppColors.white,
                    ),
                      height: 38.0,
                      width: 150,
                      child: const Center(
                        child: Text(
                          "Arbeitnehmer",
                          style:AppStyles.buttonTextStyle
                        ),
                      ),
                    ),
               ),
              GestureDetector(
                 onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MobileTwoScreen())),
                    child: Container(
                    decoration:  BoxDecoration(
                      color: AppColors.kblue,
                      border: Border.all(width: 1, color: AppColors.kGrey100),
                    ),
                      height: 38.0,
                      width: 150,
                      child: const Center(
                        child: Text(
                          "Arbeitgeber",
                          style: AppStyles.buttonlabelStyle
                        ),
                      ),
                    ),
              ),
              GestureDetector(
                  onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MobileThreeScreen())),
                    child: Container(
                    decoration:  BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.kGrey100),
                        borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8), 
                        bottomRight: Radius.circular(8)),
                        color: AppColors.white
                    ),
                      height: 38.0,
                      width: 150,
                      child: const Center(
                        child: Text(
                          "Temporärbüro",
                          style: AppStyles.buttonTextStyle
                        ),
                      ),
                    ),
              ),
          ],
        ),
    );
  }
}