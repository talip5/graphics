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
            color: Colors.white54,
            width: 300,
            height: 300,
            child: CustomPaint(
              foregroundPainter: LinePointer(),
            ),
          ),
        ),
      ),
    );
  }
}

class LinePointer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint=Paint()
      ..color=Colors.amber
      ..strokeCap=StrokeCap.round
      ..strokeWidth=10.0;
    canvas.drawLine(
        Offset(size.width*1/6, size.height*1/2),
        Offset(size.width*5/6, size.height*1/2),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

