import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPainter(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graphics'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Graphics'),
            ElevatedButton(onPressed: (){
              print('Graphics');
              Transform.rotate(
                angle: -math.pi / 4,
                child: Text('Text'),
              );
            },
                child: Text('Graphics')),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    // rotate the canvas
    final degrees = 15;
    final radians = degrees * math.pi / 180;
    canvas.rotate(radians);

    // draw the text
    final textStyle = TextStyle(color: Colors.black, fontSize: 30);
    final textSpan = TextSpan(text: 'Hello, world.', style: textStyle);
    TextPainter(text: textSpan, textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: size.width)
      ..paint(canvas, Offset(0, 0));

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}