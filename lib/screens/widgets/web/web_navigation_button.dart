import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/provider/provider.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:test/utils/constants.dart';

class WebNavigation extends StatelessWidget {
  const WebNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(SliderButtons.buttons.length, (index){
              var button = SliderButtons.buttons[index];
              return  InkWell(
                onTap:()=>context.read<ScreenSliderProvider>().updateIndex(index),
                child: Container(
                      decoration:  BoxDecoration(
                       border: Border.all(width: 1, color: AppColors.kGrey100),
                        borderRadius: index == 0 ?
                         const BorderRadius.only(
                          topLeft: Radius.circular(8), 
                          bottomLeft: Radius.circular(8)) : index == 2 ?
                          const BorderRadius.only(
                          topRight: Radius.circular(8), 
                          bottomRight: Radius.circular(8)) : null,
                          color:context.read<ScreenSliderProvider>().getPageIndex == index ? AppColors.kblue : AppColors.white
                      ),
                        height: 30.0,
                        width: 150,
                        child:  Center(
                          child: Text(
                            button['text'] as String,
                            style: context.read<ScreenSliderProvider>().getPageIndex == index ?  AppStyles.buttonlabelStyle :AppStyles.buttonTextStyle
                          ),
                        ),
                  ),
              );
            })
          ],
    );
  }
}