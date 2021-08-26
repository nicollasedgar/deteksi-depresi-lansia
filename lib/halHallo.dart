import 'package:flutter/material.dart';

class HalHallo extends StatelessWidget {
  const HalHallo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: 
      new Center(
        child: new Text("Flutter Hello World")
      ) 
    );
  }
}