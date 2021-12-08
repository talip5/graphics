import 'package:flutter/material.dart';
import 'package:graphics/circle.dart';
class Buttons extends StatefulWidget {

  @override
  _Drawer35State createState() => _Drawer35State();
}

class _Drawer35State extends State<Buttons> {

bool level=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(onPressed:(){
             print('Deneme1');
            setState(() {
              level=!level;
            });
           },
           child: Text('Deneme1')
           ),
           //widget2(),
           denemeC(level),
         ],
       ),
     ),
    );
  }

  denemeC(bool level1) {
    if (level1 == false) {
      return  CustomPaint(
        painter: DrawCircle(),
      );
    }else if(level1==true){
      return  CustomPaint(
        painter: DrawCircle15(),
      );
    }
  }


  Widget widget2() {
    return  CustomPaint(
      painter: DrawCircle(),
    );
  }

  Widget widget3() {
    return  CustomPaint(
      painter: denemeC(level),
    );
  }
}


class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.red;

    canvas.drawCircle(Offset(50.0, 50.0), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {//false : paint call might be optimized away.
    return false;
  }
}

class DrawCircle15 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;

    canvas.drawCircle(Offset(00.0, 100.0), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {//false : paint call might be optimized away.
    return false;
  }
}