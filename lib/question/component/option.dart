import 'package:deteksi_depresi_app/constants.dart';
import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered && index == qnController.selectedAns) {
              return kGreenColor;
              // if (index == qnController.correctAns) {
              //   return kGreenColor;
              // } else if (index == qnController.selectedAns &&
              //     qnController.selectedAns != qnController.correctAns) {
              //   return kRedColor;
              // }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: kDefaultPadding),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: getTheRightColor()),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$text",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  Container(
                    height: 26.0,
                    width: 26.0,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == kGrayColor
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == kGrayColor ? null : Icon(
                      getTheRightIcon(),
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}