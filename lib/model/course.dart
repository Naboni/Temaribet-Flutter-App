import 'dart:convert';

class Course {
  final String id;
  final String courseName;
  final String courseIcon;
  final String courseImg;
  Course({
    required this.id,
    required this.courseName,
    required this.courseIcon,
    required this.courseImg,
  });

  Course copyWith({
    String? id,
    String? courseName,
    String? courseIcon,
    String? courseImg,
  }) {
    return Course(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      courseIcon: courseIcon ?? this.courseIcon,
      courseImg: courseImg ?? this.courseImg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'courseName': courseName,
      'courseIcon': courseIcon,
      'courseImg': courseImg,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      courseName: map['courseName'],
      courseIcon: map['courseIcon'],
      courseImg: map['courseImg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Course(id: $id, courseName: $courseName, courseIcon: $courseIcon, courseImg: $courseImg)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.id == id &&
        other.courseName == courseName &&
        other.courseIcon == courseIcon &&
        other.courseImg == courseImg;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        courseName.hashCode ^
        courseIcon.hashCode ^
        courseImg.hashCode;
  }
}
