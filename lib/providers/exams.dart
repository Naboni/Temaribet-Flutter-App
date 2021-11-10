import 'package:flutter/material.dart';
import 'package:temaribet/model/exam.dart';

class Exams with ChangeNotifier {
  List<Exam> _exams = [
    Exam(
      examID: "1",
      question:
          "1. When a cell structure is worn out or defective, which organelle is responsible for breaking down the material?",
      ans: [
        "A. Lysosome",
        "B. Cytoplasm",
        "C. Ribosome",
        "D. Nuclues",
      ],
      ansIndex: 0,
      courseId: "3",
    ),
    Exam(
      examID: "2",
      question: "2. All living things are composed of",
      ans: [
        "A. Cell theory",
        "B. Ribosomes",
        "C. Organelles",
        "D. Cells",
      ],
      ansIndex: 3,
      courseId: "3",
    ),
    Exam(
      examID: "3",
      question:
          "3. The most basic units of structure and function in all organisms are  ",
      ans: [
        "A. Cells",
        "B. Cell Theory",
        "C. Organelles",
        "D. Ribosomes",
      ],
      ansIndex: 0,
      courseId: "3",
    ),
    Exam(
      examID: "4",
      question:
          "4. What is the organelle that is a small grain like structure where proteins are made? ",
      ans: [
        "A. Cytoplasm",
        "B. Nucleus",
        "C. Ribosomes",
        "D. Lysosomes",
      ],
      ansIndex: 2,
      courseId: "3",
    ),
    Exam(
      examID: "5",
      question:
          "5. Which two plant cell structures are responsible for storing energy from sunlight and later releasing it for cells to use? ",
      ans: [
        "A. Chloroplast and nucleus",
        "B. Mitochondria and cell wall",
        "C. Chloroplast and mitochondria",
        "D. Nucleus and cell wall",
      ],
      ansIndex: 2,
      courseId: "3",
    ),
  ];

  List<Exam> get exams {
    return [..._exams];
  }

  Iterable<Exam> findExamById(String id) {
    return _exams.where((element) => element.courseId == id);
  }

  // int _totalScore = 0;
  // int get totalScore => this._totalScore;

  // bool _isAnswered = false;
  // bool get isAnswered => this._isAnswered;

  // void _answerQuestion(int score) {
  //   _totalScore += score;
  //   _questionIndex = _questionIndex + 1;
  //   print(_questionIndex);
  // }

  // bool isCorrect(int ansIndex) {
  //   int? correctIndex;
  //   if (ansIndex == correctIndex) {
  //     _totalScore++;
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  bool _isAnsered = false;
  bool get isAnsered => this._isAnsered;
  bool _correctAns = false;
  bool get correctAns => this._correctAns;
  // int _numOfCorrectAns;

  void addExam() {
    // _exams.add(value);
    notifyListeners();
  }
}
