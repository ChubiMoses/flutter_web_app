import 'package:test/screens/widgets/mobile/header.dart';
import 'package:test/screens/widgets/mobile/mobile_navigation.dart';
import 'package:test/screens/widgets/mobile/mobile_three_content.dart';
import 'package:test/utils/app_colors.dart';
import 'package:test/utils/curve_painter.dart';
import 'package:flutter/material.dart';

class MobileThreeScreen extends StatefulWidget {
  const MobileThreeScreen({super.key});

  @override
  State<MobileThreeScreen> createState() => _MobileOneState();
}

class _MobileOneState extends State<MobileThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.white,
        body: SafeArea(
         left: false,right: false,
        child: SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 1300),
                painter: CurvePainter(),
              ),
              Center(
                child: Column(
                  children: const [
                    HeaderWidget(),
                    SizedBox(
                      height: 50,
                    ),
                    MobileNavigation(),
                    SizedBox(
                      height: 50,
                    ),
                   
                    MobileThreeContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
