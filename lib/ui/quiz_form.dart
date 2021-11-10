import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/subjects.dart';

class QuizForm extends StatefulWidget {
  const QuizForm({Key? key}) : super(key: key);

  @override
  _QuizFormState createState() => _QuizFormState();
}

class _QuizFormState extends State<QuizForm> {
  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final exams = Provider.of<Exams>(context).findExamById(courseId).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(' Exams'),
        centerTitle: true,
      ),
    );
  }
}
