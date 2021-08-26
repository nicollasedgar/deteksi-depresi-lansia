import 'package:flutter/material.dart';

class CardParsing extends StatelessWidget {
  const CardParsing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Card dan Parsing data"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(Icons.home, "Home", Colors.brown),
            MyCard(Icons.favorite, "Favorite", Colors.pink),
            MyCard(Icons.place, "Place", Colors.red),
            MyCard(Icons.settings, "Settings", Colors.red),
          ],
        ),
      ),
    );
  }

// Teknik Erico Darmawan
  Card MyCard(IconData logo, String teks, Color warna) {
    return new Card(
            child: new Column(
              children: <Widget>[
                new Icon(
                  logo,
                  size: 50.0,
                  color: warna,
                ),
                new Text(
                  teks,
                  style: new TextStyle(fontSize: 20.0, color: warna),
                )
              ],
            ),
          );
  }
}

// class MyCard extends StatelessWidget {
//   MyCard ({this.logo, this.warnaLogo, this.teks});

//   final IconData logo;
//   final Color warnaLogo;
//   final String teks;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       child: new Card(
//         child: new Column(
//           children: <Widget>[
//             new Icon(
//               logo,
//               size: 50.0,
//               color: warnaLogo,
//             ),
//             new Text(
//               teks,
//               style: new TextStyle(fontSize: 20.0, color: warnaLogo),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
