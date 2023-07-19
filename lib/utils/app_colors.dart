import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF319795);
  static const Color background = Color(0xFF18191b);
  static const Color primaryTextColor = Colors.white;
  static const Color green = Color(0xff12B76A);
  static const Color white = Colors.white;
  static const Color kblue =Color(0xff81E6D9);
  static const Color black = Colors.black;
  static const Color numColor =Color(0xff718096);
  static const Color kGrey100 =Color(0xffCBD5E0);
  static const Color numAvatarColor =Color(0xffF7FAFC);
  static const Color blueGrey = Color(0xff718096);
  static const Color grey = Color(0xffb2b2b2);

  static const RadialGradient radialGradientBackground = RadialGradient(
    center: Alignment(0, 0),
    colors: [
      Color(0xFF443635),
      Color(0xFF35282B),
      Color(0xFF1B1527),
    ],
    radius: 1,
  );

  static  LinearGradient painterGradient = const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color(0xFFEBF4FF),
           Color(0xFFE6FFFA),
        ],
      );

  static List<BoxShadow> boxShadow = <BoxShadow>[
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 10,
            color: AppColors.grey.withOpacity(.2),
          ),
          BoxShadow(
            offset: const Offset(-3, 0),
            blurRadius: 15,
            color: AppColors.grey.withOpacity(.2),
          )
  ];
    
  static  LinearGradient buttonGradient = const LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
           Color(0xFF3182CE),
          Color(0xFF319795),
          
        ],
      );

}