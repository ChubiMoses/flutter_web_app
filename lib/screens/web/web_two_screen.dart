import 'package:test/screens/widgets/web/header_widget.dart';
import 'package:test/screens/widgets/web/web_two_content.dart';
import 'package:test/screens/widgets/web/web_two_navigation.dart';
import 'package:test/utils/curve_painter.dart';
import 'package:flutter/material.dart';


class WebTwoScreen extends StatefulWidget {
  const WebTwoScreen({super.key});

  @override
  State<WebTwoScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WebTwoScreen> {


  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body:SingleChildScrollView(
        child: SizedBox(
          child: Stack(
            children: [
              CustomPaint(
                size:  Size(MediaQuery.of(context).size.width,1300),
                painter: CurvePainter(),
              ),
              Center(
                child: Column(
                  children: const [
                    WebHearder(),
                    SizedBox(height: 100,),
                    WebTwoNavigation(),
                     SizedBox(height: 50,),
                    WebTwoContent(),
                    SizedBox(height: 100,),
                  ],
                ),
              ),
             
            ],
          ),
        ),
      )
    );
  }
}