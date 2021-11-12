import 'package:flutter/cupertino.dart';
import 'package:temaribet/model/course.dart';

class Subjects with ChangeNotifier {
  List<Course> _courses = [
    Course(
        id: "1",
        courseName: "Math",
        courseIcon: "assets/images/calculator.png",
        courseImg: "assets/images/maths.jpg"),
    Course(
        id: "2",
        courseName: "Physics",
        courseIcon: "assets/images/relativity.png",
        courseImg: "assets/images/physics.jpg"),
    Course(
        id: "3",
        courseName: "Biology",
        courseIcon: "assets/images/dna.png",
        courseImg: "assets/images/biology.jpg"),
    Course(
        id: "4",
        courseName: "Chemistry",
        courseIcon: "assets/images/flask.png",
        courseImg: "assets/images/chemistry.png"),
    Course(
        id: "5",
        courseName: "Geography",
        courseIcon: "assets/images/globe.png",
        courseImg: "assets/images/geography.jpg"),
    Course(
        id: "6",
        courseName: "History",
        courseIcon: "assets/images/parchment.png",
        courseImg: "assets/images/history.png"),
    Course(
        id: "7",
        courseName: "Civics",
        courseIcon: "assets/images/scale.png",
        courseImg: "assets/images/civics.jpg"),
    Course(
        id: "8",
        courseName: "English",
        courseIcon: "assets/images/blocks.png",
        courseImg: "assets/images/english.jpeg"),
  ];
  List<Course> get courses {
    return [..._courses];
  }

  Course findById(String id) {
    return _courses.firstWhere((element) => element.id == id);
  }

  void addSubject() {
    // _courses.add(value);
    notifyListeners();
  }
}
