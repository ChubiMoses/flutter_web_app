import 'package:flutter/material.dart';
import 'package:test/screens/mobile/mobile_one_screen.dart';
import 'package:test/screens/web/web_one_screen.dart.dart';
import 'package:test/utils/responsive_helper.dart';

class Mapping extends StatefulWidget {
  const Mapping({super.key});

  @override
  State<Mapping> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mapping> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveHelper.isMobile(context) ? const MobileOneScreen() : const WebOneScreen(),
    );
  }
}