import 'package:deteksi_depresi_app/constants.dart';
import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:deteksi_depresi_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class ScoreScreenBerat extends StatelessWidget {
  const ScoreScreenBerat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent,
        title: new Center(child: new Text('PGDS')),
      ),
      body: Stack(
        children: [
          Image.asset(
            "img/lansiabg.jpg",
            fit: BoxFit.fill,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Skor ${_qnController.numOfCorrectAns}',
                  style: TextStyle(fontSize: 30.0,),
                ),
              ],
            ),
          ),
          Center(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.analytics),
                    title: Text(
                      'Depresi Berat',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    subtitle: Text(
                      "Terdapat beberapa faktor yang dapat memicu terjadinya depresi berat, di antaranya: ketidakseimbangan hormon dalam tubuh dan perubahan pada fungsi maupun efek neurotransmitter juga dapat berperan dalam memicu depresi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text(
                          'SELESAI & KEMBALI',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () => Get.to(WelcomeScreen()),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
