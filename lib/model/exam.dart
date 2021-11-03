import 'dart:convert';

import 'package:flutter/foundation.dart';

class Exam {
  final String examID;
  final String question;
  final List<String> ans;
  final int ansIndex;
  final String courseId;
  Exam({
    required this.examID,
    required this.question,
    required this.ans,
    required this.ansIndex,
    required this.courseId,
  });

  Exam copyWith({
    String? examID,
    String? question,
    List<String>? ans,
    int? ansIndex,
    String? courseId,
  }) {
    return Exam(
      examID: examID ?? this.examID,
      question: question ?? this.question,
      ans: ans ?? this.ans,
      ansIndex: ansIndex ?? this.ansIndex,
      courseId: courseId ?? this.courseId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'examID': examID,
      'question': question,
      'ans': ans,
      'ansIndex': ansIndex,
      'courseId': courseId,
    };
  }

  factory Exam.fromMap(Map<String, dynamic> map) {
    return Exam(
      examID: map['examID'],
      question: map['question'],
      ans: List<String>.from(map['ans']),
      ansIndex: map['ansIndex'],
      courseId: map['courseId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Exam.fromJson(String source) => Exam.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Exam(examID: $examID, question: $question, ans: $ans, ansIndex: $ansIndex, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Exam &&
        other.examID == examID &&
        other.question == question &&
        listEquals(other.ans, ans) &&
        other.ansIndex == ansIndex &&
        other.courseId == courseId;
  }

  @override
  int get hashCode {
    return examID.hashCode ^
        question.hashCode ^
        ans.hashCode ^
        ansIndex.hashCode ^
        courseId.hashCode;
  }
}
