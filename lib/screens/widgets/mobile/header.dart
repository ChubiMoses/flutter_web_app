import 'package:test/screens/widgets/appbar_widget.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: AppColors.painterGradient
          ),
          child: Column(
            children: [
              const AppBarWidget(),
              const SizedBox(height: 20,),
              const SizedBox(
              width: 200,
              child: Text("Deine Job Website",  textAlign: TextAlign.center,
              style: AppStyles.headerTextStyle)),
                SvgPicture.asset(
                  'assets/svgs/undraw_agreement_aajr.svg',
                  width: MediaQuery.of(context).size.width,
                ),
                ],
              ),
        ),
            Positioned(
            top: 510,
              child: Center(
                child: Container(
                decoration:  BoxDecoration(
                  boxShadow: AppColors.boxShadow,
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8), 
                  topLeft: Radius.circular(8)
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                    const SizedBox(height: 20,),
                      InkWell(
                      onTap:(){},
                        child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: AppColors.buttonGradient
                        ),
                          height: 38.0,
                          width: MediaQuery.of(context).size.width-50,
                          child: const Center(
                            child: Text(
                              "Kostenlos Registrieren",
                              style:AppStyles.buttonlabelStyle
                            ),
                          ),
                        ),
                      ),
                        const SizedBox(height: 100,),
                    ],
                  ),
                ),
              ),
            ),
       ],
    );
  }
}