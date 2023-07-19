import 'package:test/utils/app_colors.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 5,
              decoration:  BoxDecoration(
              boxShadow: AppColors.boxShadow,
              color: AppColors.primary,
              gradient: AppColors.buttonGradient
            ),
          ),
        Container(
          height: 50,
            decoration:  BoxDecoration(
            boxShadow: AppColors.boxShadow,
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
            topRight: Radius.circular(8), 
            topLeft: Radius.circular(8)
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child:TextButton(
                    child:  const Text(
                      "Login",
                     style:AppStyles.buttonTextStyle,
                   ),
                   onPressed: () {
                  },
                 ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}