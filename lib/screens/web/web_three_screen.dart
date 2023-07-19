import 'package:test/screens/widgets/web/header_widget.dart';
import 'package:test/screens/widgets/web/web_three_content.dart';
import 'package:test/screens/widgets/web/web_three_navigation.dart';
import 'package:test/utils/curve_painter.dart';
import 'package:flutter/material.dart';


class WebThreeScreen extends StatefulWidget {
  const WebThreeScreen({super.key});

  @override
  State<WebThreeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WebThreeScreen> {


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
                    WebThreeNavigation(),
                     SizedBox(height: 50,),
                     WebThreeContent(),
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