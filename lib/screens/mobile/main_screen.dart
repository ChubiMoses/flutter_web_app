import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/provider/provider.dart';
import 'package:test/screens/mobile/mobile_one_screen.dart';
import 'package:test/screens/mobile/mobile_three_screen.dart';
import 'package:test/screens/mobile/mobile_two_screen.dart';

class MobileMainScreen extends StatefulWidget {
  const MobileMainScreen({super.key});

  @override
  State<MobileMainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MobileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return  PageView(
          controller:context.read<ScreenSliderProvider>().pageController,
          onPageChanged:  context.read<ScreenSliderProvider>().updateIndex,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            MobileOneScreen(),
            MobileTwoScreen(),
            MobileThreeScreen(),
      ]);
  }
}