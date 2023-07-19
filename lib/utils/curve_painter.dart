import 'package:test/utils/app_colors.dart';
import 'package:flutter/material.dart';
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill; 
    var rect = Offset.zero & size;

    paint.shader = AppColors.painterGradient.createShader(rect);

    var path = Path();

    path.moveTo(0, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.3,  size.height * 0.30, size.width * 0.5,  size.height * 0.28);

     
    path.quadraticBezierTo(
      size.width * 0.85, size.height * 0.25,  size.width,  size.height * 0.31);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);


    var secondPath = Path();
    secondPath.moveTo(0, size.height * 0.8);
    secondPath.quadraticBezierTo(size.width * 0.25, size.height * 0.75,
        size.width * 0.5, size.height * 0.8);
    secondPath.quadraticBezierTo(size.width * 0.75, size.height * 0.85,
        size.width * 1.0, size.height * 0.8);
    secondPath.lineTo(size.width, size.height);
    secondPath.lineTo(0, size.height);


    canvas.drawPath(path, paint);
    canvas.drawPath(secondPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
