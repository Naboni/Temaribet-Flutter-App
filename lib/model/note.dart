import 'dart:convert';

import 'package:flutter/foundation.dart';

class Note {
  final String id;
  final String noteTopics;
  final List<String> noteContent;
  final String courseId;
  Note({
    required this.id,
    required this.noteTopics,
    required this.noteContent,
    required this.courseId,
  });

  Note copyWith({
    String? id,
    String? noteTopics,
    List<String>? noteContent,
    String? courseId,
  }) {
    return Note(
      id: id ?? this.id,
      noteTopics: noteTopics ?? this.noteTopics,
      noteContent: noteContent ?? this.noteContent,
      courseId: courseId ?? this.courseId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'noteTopics': noteTopics,
      'noteContent': noteContent,
      'courseId': courseId,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      noteTopics: map['noteTopics'],
      noteContent: List<String>.from(map['noteContent']),
      courseId: map['courseId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Note(id: $id, noteTopics: $noteTopics, noteContent: $noteContent, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Note &&
        other.id == id &&
        other.noteTopics == noteTopics &&
        listEquals(other.noteContent, noteContent) &&
        other.courseId == courseId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        noteTopics.hashCode ^
        noteContent.hashCode ^
        courseId.hashCode;
  }
}
