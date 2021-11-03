import 'package:flutter/material.dart';
import 'package:temaribet/data/questions.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/widget/custome_dialog_box.dart';
import 'package:temaribet/widget/question_widget.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Exam extends StatefulWidget {
  static const RouteName = '/exams';

  Exam({Key? key}) : super(key: key);

  @override
  _ExamState createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  CarouselController buttonCarouselController = CarouselController();
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 10;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: Text(
          'Exam',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: CountdownTimer(
                // controller: CountdownTimerController(),
                onEnd: () => CustomDialogBox(
                  title: 'Your result',
                  descriptions: "18/20",
                  text: "Back",
                ),
                textStyle: TextStyle(fontSize: 18.0),
                endTime: endTime,
              ),
            ),
          ),
        ],
      ),
      body: CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            height: height - 100,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            reverse: false),
        items: questions
            .map((item) => Container(
                  child: Center(
                    child: Column(
                      children: [
                        QuestionWidget(item, buttonCarouselController),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
