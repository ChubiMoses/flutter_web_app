import 'package:flutter/material.dart';
import 'package:test/screens/web/web_one_screen.dart.dart';
import 'package:test/screens/web/web_three_screen.dart';
import 'package:test/screens/web/web_two_screen.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';

class WebTwoNavigation extends StatelessWidget {
  const WebTwoNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              GestureDetector(
                 onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WebOneScreen())),
                    child: Container(
                    decoration:  BoxDecoration(
                       border: Border.all(width: 1, color: AppColors.kGrey100),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8), 
                        bottomLeft: Radius.circular(8)),
                        color: AppColors.white
                    ),
                      height: 30.0,
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
                  onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WebTwoScreen())),
                    child: Container(
                    decoration:  BoxDecoration(
                      color: AppColors.kblue,
                      border: Border.all(width: 1, color: AppColors.kGrey100),
                    ),
                      height: 30.0,
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
                    onTap:()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WebThreeScreen())),
                    child: Container(
                    decoration:  BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.kGrey100),
                        borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8), 
                        bottomRight: Radius.circular(8)),
                        color: AppColors.white
                    ),
                      height: 30.0,
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
        );
  }
}