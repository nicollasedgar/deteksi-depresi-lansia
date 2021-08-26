import 'package:deteksi_depresi_app/constants.dart';
import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:deteksi_depresi_app/question/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DeteksiDepresiApp"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(children: [
        Image.asset("img/lansiabg.jpg"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                new Text(
                  "SELAMAT DATANG",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                new Text(
                  "Deteksi Depresi Dini Pada Lansia",
                  style: TextStyle(fontSize: 20.0),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Get.to(QuestionScreen()),
                  child: new Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: new Text(
                      "START",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
                Spacer(flex: 2)
              ],
            ),
          ),
        )
      ]),
    );
  }
}
