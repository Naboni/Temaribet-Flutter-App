import 'package:flutter/material.dart';
import 'package:temaribet/model/lecture.dart';

class Lectures with ChangeNotifier {
  List<Lecture> _lectures = [
    Lecture(
      id: "1",
      lectureName: "Respiration",
      lectureVideo: "",
      courseId: "1",
    ),
    Lecture(
      id: "2",
      lectureName: "Micro-Organisms",
      lectureVideo: "",
      courseId: "1",
    ),
    Lecture(
      id: "3",
      lectureName: "Photosynthesis",
      lectureVideo: "",
      courseId: "1",
    ),
    Lecture(
      id: "4",
      lectureName: "Kreb Cycle",
      lectureVideo: "",
      courseId: "1",
    ),
    Lecture(
      id: "5",
      lectureName: "Cellular Respiration",
      lectureVideo: "",
      courseId: "1",
    ),
    Lecture(
      id: "6",
      lectureName: "Microscope",
      lectureVideo: "",
      courseId: "1",
    ),
  ];
  List<Lecture> get lectures {
    return [..._lectures];
  }

  Lecture findById(String id) {
    return _lectures.firstWhere((element) => element.id == id);
  }

  Iterable<Lecture> findByCourseId(String id) {
    return _lectures.where((element) => element.courseId == id);
  }

  void addLecture() {
    // _lectures.add(value);
    notifyListeners();
  }
}
