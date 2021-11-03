import 'dart:convert';

class Course {
  final String id;
  final String courseName;
  final String courseIcon;

  Course({
    required this.id,
    required this.courseName,
    required this.courseIcon,
  });

  Course copyWith({
    String? id,
    String? courseName,
    String? courseIcon,
  }) {
    return Course(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      courseIcon: courseIcon ?? this.courseIcon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'courseName': courseName,
      'courseIcon': courseIcon,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      courseName: map['courseName'],
      courseIcon: map['courseIcon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  @override
  String toString() =>
      'Course(id: $id, courseName: $courseName, courseIcon: $courseIcon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.id == id &&
        other.courseName == courseName &&
        other.courseIcon == courseIcon;
  }

  @override
  int get hashCode => id.hashCode ^ courseName.hashCode ^ courseIcon.hashCode;
}
