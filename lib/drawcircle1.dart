import 'package:flutter/material.dart';

class DrawCircle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body:Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: CustomPaint(
              foregroundPainter: CirclePainter(),
              //child: Text('Custom Paint',style: TextStyle(fontSize: 30.0),),
            ),
          ),
        ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.red
      ..strokeWidth=10.0
      ..style=PaintingStyle.stroke;
    //..style=PaintingStyle.fill;

    final center= Offset(size.width/2, size.height/2);

    final radius=Radius.circular(16.0);

    canvas.drawCircle (
      center,
      size.width*1/4,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

