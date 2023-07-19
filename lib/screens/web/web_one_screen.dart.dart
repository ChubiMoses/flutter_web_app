import 'package:test/screens/widgets/web/header_widget.dart';
import 'package:test/screens/widgets/web/web_one_content.dart';
import 'package:test/screens/widgets/web/web_one_navigation_button.dart';
import 'package:test/utils/curve_painter.dart';
import 'package:flutter/material.dart';


class WebOneScreen extends StatefulWidget {
  const WebOneScreen({super.key});

  @override
  State<WebOneScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WebOneScreen> {


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
                    WebOneNavigation(),
                     SizedBox(height: 50,),
                     WebOneContent(),
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