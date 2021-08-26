import 'package:deteksi_depresi_app/constants.dart';
import 'package:deteksi_depresi_app/controllers/question_controller.dart';
import 'package:deteksi_depresi_app/models/question.dart';
import 'package:deteksi_depresi_app/question/component/question_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Image.asset(
          "img/darkbg.jpg",
          fit: BoxFit.fill,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Padding(padding: EdgeInsets.only(top: 10.0)),
                // ProgressBar(),
                SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Pertanyaan ${_questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/${_questionController.question.length}",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: kSecondaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(thickness: 2.0),
                SizedBox(height: kDefaultPadding),
                Expanded(
                  child: PageView.builder(
                    // mencegah supaya tidak swipeable
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.question.length,
                    itemBuilder: (context, index) => QuestionCard(
                        question: _questionController.question[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
