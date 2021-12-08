import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gradient Circle Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Draw Gradient Circle'),
        ),
        body:Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.white,
            child: CustomPaint(
              foregroundPainter: RectanglePainter(),
              //child: Text('Custom Paint',style: TextStyle(fontSize: 30.0),),
            ),
          ),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.blue
      ..strokeWidth=10.0
    //..style=PaintingStyle.stroke;
      ..style=PaintingStyle.fill;

    final a= Offset(size.width*1/6, size.height*1/4);
    final b= Offset(size.width*5/6, size.height*3/4);
    final radius=Radius.circular(16.0);
    final rect=  Rect.fromPoints(a, b);

    canvas.drawRRect (RRect.fromRectAndRadius(rect, radius), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

