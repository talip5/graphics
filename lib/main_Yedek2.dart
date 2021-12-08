import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Draw Circle - Second Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Draw Circle Inside Another Circle In Flutter'),
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
  //var paint1 = Paint()..color = Colors.redAccent;
  var paint1 = Paint()..color=Colors.redAccent;
  var paint2 = Paint()
    ..color = Colors.amber
    ..strokeWidth = 16
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(0.0, 0.0), 50, paint1);
    canvas.drawCircle(Offset(0.0, 0.0), 40, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}