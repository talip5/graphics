import 'package:flutter/material.dart';

class Drawer35 extends StatefulWidget {
  const Drawer35({Key? key}) : super(key: key);

  @override
  _Drawer35State createState() => _Drawer35State();
}

class _Drawer35State extends State<Drawer35> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('Item1'),
            ),
          ],
        ),
      ),
    );
  }
}
