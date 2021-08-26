import 'package:flutter/material.dart';

class HalamanIcon extends StatelessWidget {
  const HalamanIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Container(
        color: Colors.blue[400],
        width: 200.0,
        height: 100.0,
        child: new Center(
          child: new Icon(Icons.android, size: 80.0, color: Colors.white),
          // child: new Text(
          //   "Flutter Tutorial Style",
          //   style: new TextStyle(
          //       color: Colors.white, fontSize: 15.0, fontFamily: "Serif"),
          // ),
        ),
      ),
    ));
  }
}
