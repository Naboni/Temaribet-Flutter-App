import 'dart:convert';

class Lecture {
  final String id;
  final String lectureName;
  final String lectureVideo;
  final String courseId;

  Lecture({
    required this.id,
    required this.lectureName,
    required this.lectureVideo,
    required this.courseId,
  });

  Lecture copyWith({
    String? id,
    String? lectureName,
    String? lectureVideo,
    String? courseId,
  }) {
    return Lecture(
      id: id ?? this.id,
      lectureName: lectureName ?? this.lectureName,
      lectureVideo: lectureVideo ?? this.lectureVideo,
      courseId: courseId ?? this.courseId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'lectureName': lectureName,
      'lectureVideo': lectureVideo,
      'courseId': courseId,
    };
  }

  factory Lecture.fromMap(Map<String, dynamic> map) {
    return Lecture(
      id: map['id'],
      lectureName: map['lectureName'],
      lectureVideo: map['lectureVideo'],
      courseId: map['courseId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Lecture.fromJson(String source) =>
      Lecture.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Lecture(id: $id, lectureName: $lectureName, lectureVideo: $lectureVideo, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Lecture &&
        other.id == id &&
        other.lectureName == lectureName &&
        other.lectureVideo == lectureVideo &&
        other.courseId == courseId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        lectureName.hashCode ^
        lectureVideo.hashCode ^
        courseId.hashCode;
  }
}
