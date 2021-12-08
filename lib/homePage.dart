import 'package:flutter/material.dart';
import 'package:graphics/circle.dart';
import 'package:graphics/drawcircle.dart';
import 'package:graphics/drawcircle1.dart';
import 'package:graphics/drawer.dart';
import 'package:graphics/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,
        child: Scaffold(
        appBar: AppBar(
          title: Text('Custom Paint'),
          bottom: TabBar(
            tabs: [
              Text('Line'),
              Text('Circle'),
              Text('Circle 1',maxLines: 2,textAlign: TextAlign.center,),
              Text('Rect'),
              Text('Buttos'),
            ],
          ),
        ),
          body: TabBarView(
            children: [
              Circle(),
              DrawCircle35(),
              DrawCircle1(),
              Circle(),
              Buttons(),
            ],
          ),
    ),
    );
  }
}