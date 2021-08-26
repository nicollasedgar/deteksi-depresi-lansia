import 'package:deteksi_depresi_app/constants.dart';
import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 35.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3.0),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * 0.9,
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("15 / 30")
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}