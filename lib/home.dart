import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      body: SafeArea(
        child: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Text(
                  "SELAMAT DATANG",
                  style: new TextStyle(color: Colors.white, fontSize: 30.0),
                ),
                new Padding(padding: new EdgeInsets.only(top: 10.0)),
                // new Row(
                //   children: <Widget>[
                //     new Icon(
                //       Icons.donut_small,
                //       size: 50.0,
                //       color: Colors.black,
                //     ),
                //     new Icon(
                //       Icons.donut_small,
                //       size: 50.0,
                //       color: Colors.black,
                //     ),
                //     new Icon(
                //       Icons.donut_small,
                //       size: 50.0,
                //       color: Colors.black,
                //     ),
                //   ],
                // ),
                new Image.asset(
                  "img/lansia.jpg",
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
