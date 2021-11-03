import 'dart:convert';

class Flash {
  final String flashId;
  final String flashTitle;
  final String flashDetail;
  final String courseId;

  Flash({
    required this.flashId,
    required this.flashTitle,
    required this.flashDetail,
    required this.courseId,
  });

  Flash copyWith({
    String? flashId,
    String? flashTitle,
    String? flashDetail,
    String? courseId,
  }) {
    return Flash(
      flashId: flashId ?? this.flashId,
      flashTitle: flashTitle ?? this.flashTitle,
      flashDetail: flashDetail ?? this.flashDetail,
      courseId: courseId ?? this.courseId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'flashId': flashId,
      'flashTitle': flashTitle,
      'flashDetail': flashDetail,
      'courseId': courseId,
    };
  }

  factory Flash.fromMap(Map<String, dynamic> map) {
    return Flash(
      flashId: map['flashId'],
      flashTitle: map['flashTitle'],
      flashDetail: map['flashDetail'],
      courseId: map['courseId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Flash.fromJson(String source) => Flash.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Flash(flashId: $flashId, flashTitle: $flashTitle, flashDetail: $flashDetail, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Flash &&
        other.flashId == flashId &&
        other.flashTitle == flashTitle &&
        other.flashDetail == flashDetail &&
        other.courseId == courseId;
  }

  @override
  int get hashCode {
    return flashId.hashCode ^
        flashTitle.hashCode ^
        flashDetail.hashCode ^
        courseId.hashCode;
  }
}
