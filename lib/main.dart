import 'package:deteksi_depresi_app/question/question_screen.dart';
import 'package:deteksi_depresi_app/score/score_screen.dart';
import 'package:deteksi_depresi_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'screens/welcome/welcome_screen.dart';
// import 'home.dart';
// import 'halHallo.dart';
// import 'HalamanIcon.dart';
// import 'HalamanAppBar.dart';
// import 'HalamanRowColumn.dart';
// import 'HalamanCardParsing.dart';


void main() {
  runApp(new MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/question_screen' : (BuildContext context) => new QuestionScreen(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Deteksi Depresi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WelcomeScreen(),
      
    );
  }
}

