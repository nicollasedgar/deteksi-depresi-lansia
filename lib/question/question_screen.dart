import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/body.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.indigoAccent,
        title: new Center(child: new Text('GDS') )
      ),
      body: Body(),
    );
  }
}


