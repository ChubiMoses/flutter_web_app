import 'package:test/mapping.dart';
import 'package:test/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job Test',
      theme: ThemeData(
        fontFamily:AppStyles.lato,
      ),
      home: const Mapping()
    );
  }
}
