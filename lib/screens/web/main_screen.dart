import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/provider/provider.dart';
import 'package:test/screens/web/web_one_screen.dart.dart';
import 'package:test/screens/web/web_three_screen.dart';
import 'package:test/screens/web/web_two_screen.dart';

class WebMainScreen extends StatefulWidget {
  const WebMainScreen({super.key});

  @override
  State<WebMainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<WebMainScreen> {
  @override
  Widget build(BuildContext context) {
    return  PageView(
          controller:context.read<ScreenSliderProvider>().pageController,
          onPageChanged:  context.read<ScreenSliderProvider>().updateIndex,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            WebOneScreen(),
            WebTwoScreen(),
            WebThreeScreen(),
      ]);
  }
}