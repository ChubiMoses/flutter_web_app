import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static const lato = 'Lato';

  static const buttonTextStyle = TextStyle(
    fontSize: 14,
    fontFamily: AppStyles.lato,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

   static const buttonlabelStyle = TextStyle(
    color: AppColors.primaryTextColor, fontSize: 12,  
    );


   static const numStyle = TextStyle(
     color: AppColors.numColor, fontSize: 100,  
    );
  

  static const headerTextStyle = TextStyle(
    fontFamily: AppStyles.lato,
    fontSize: 40.0, letterSpacing: 2.5,
    fontWeight: FontWeight.w700,
    color:Color(0xFF2D3748)
  );


  static const mediumTitleTextStyle = TextStyle(
    fontFamily: AppStyles.lato,
    fontSize: 28.0, 
    fontWeight: FontWeight.w500,
    color:Color(0xFF4A5568)
  );


  static const mediumTextStyle = TextStyle(
    fontFamily: AppStyles.lato,
    fontSize: 20.0, 
    fontWeight: FontWeight.w500,
    color:AppColors.blueGrey
  );


}