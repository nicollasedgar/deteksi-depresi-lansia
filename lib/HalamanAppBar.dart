import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text('AppBar Demo'),),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      )
    );
  }
}