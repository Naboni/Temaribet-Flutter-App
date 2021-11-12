class ExamResult {
  String examId;
  String chooseContent;
  int index;
  int anserIndex;

  ExamResult({
    required this.examId,
    required this.chooseContent,
    required this.index,
    required this.anserIndex,
  });

  Map<String, dynamic> createMap() {
    return {
      examId: [chooseContent, index, anserIndex]
    };
  }
}
