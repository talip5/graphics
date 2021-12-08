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
        appBar: AppBar(
          title: Text('Draw Gradient Circle'),
        ),
        body: Center(
          child: CustomPaint(
            painter: DrawCircle(),
          ),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = Paint()
      ..shader = LinearGradient(colors: [
        Colors.blue,
        Colors.blueGrey,
      ]).createShader(Rect.fromCircle(center: Offset(0.0, 0.0), radius: 50));

    canvas.drawCircle(Offset(0.0, 0.0), 50, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}