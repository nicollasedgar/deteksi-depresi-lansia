import 'package:deteksi_depresi_app/models/question.dart';
import 'package:deteksi_depresi_app/score/score_screen.dart';
import 'package:deteksi_depresi_app/score/score_screen_berat.dart';
import 'package:deteksi_depresi_app/score/score_screen_ringan.dart';
import 'package:flutter/widgets.dart';
import 'package:deteksi_depresi_app/constants.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

// We use get package for our state management

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => this._pageController;

  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();

  List<Question> get question => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _correctAns = 0;
  int get correctAns => this._correctAns;

  int _selectedAns = 0;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    _animationController.forward();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    Future.delayed(Duration(milliseconds: 500), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    } else {
      if ( _numOfCorrectAns >= 0 && _numOfCorrectAns <= 9) {
        Get.to(ScoreScreen());
      } else if (_numOfCorrectAns >= 10 && _numOfCorrectAns <=19 ) {
        Get.to(ScoreScreenRingan());
      }else{
        Get.to(ScoreScreenBerat());
      }
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
