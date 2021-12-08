import 'package:flutter/material.dart';

class DrawCircle35 extends StatefulWidget {
  @override
  State<DrawCircle35> createState() => _DrawCircle35State();
}

class _DrawCircle35State extends State<DrawCircle35> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: DrawCircle5(),
        ),
        ),
    );
  }
}

class DrawCircle5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red;

    canvas.drawCircle(Offset(0.0, 0.0), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //false : paint call might be optimized away.
    return false;
  }
}
