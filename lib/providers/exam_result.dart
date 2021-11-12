import 'package:flutter/material.dart';

class ExamResult with ChangeNotifier {
  String? _examId;
  String? _chooseContent;
  int? _index;
  int? _anserIndex;

  Map<String, List> _userAns = {};

  Map<String, List> get getUserAns {
    return _userAns;
  }

  // void saveAns() {
  //   _userAns.addAll({_examID: });
  //   notifyListeners();
  // }

  //getters:
  String get getExamId => _examId!;
  String get getChooseContent => _chooseContent!;
  int get getIndex => _index!;
  int get getAnserIndex => _anserIndex!;

  //Setters:
  void setExamId(String val) {
    _examId = val;
    notifyListeners();
  }

  void setChooseContent(String val) {
    _chooseContent = val;
    notifyListeners();
  }

  void setIndex(int val) {
    _index = val;
    notifyListeners();
  }

  void setAnserIndex(int val) {
    _anserIndex = val;
    notifyListeners();
  }
}
