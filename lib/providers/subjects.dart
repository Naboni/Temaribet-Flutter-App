import 'package:flutter/cupertino.dart';
import 'package:temaribet/model/course.dart';

class Subjects with ChangeNotifier {
  List<Course> _courses = [
    Course(
      id: "1",
      courseName: "Math",
      courseIcon: "assets/images/calculator.png",
    ),
    Course(
      id: "2",
      courseName: "Physics",
      courseIcon: "assets/images/relativity.png",
    ),
    Course(
      id: "3",
      courseName: "Biology",
      courseIcon: "assets/images/dna.png",
    ),
    Course(
      id: "4",
      courseName: "Chemistry",
      courseIcon: "assets/images/flask.png",
    ),
    Course(
      id: "5",
      courseName: "Geography",
      courseIcon: "assets/images/globe.png",
    ),
    Course(
      id: "6",
      courseName: "History",
      courseIcon: "assets/images/parchment.png",
    ),
    Course(
      id: "7",
      courseName: "Civics",
      courseIcon: "assets/images/scale.png",
    ),
    Course(
      id: "8",
      courseName: "English",
      courseIcon: "assets/images/blocks.png",
    ),
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
