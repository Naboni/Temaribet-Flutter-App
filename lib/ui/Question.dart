import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/quiz_num.dart';
import 'package:temaribet/ui/result.dart';

class Questions extends StatefulWidget {
  static const RouteName = 'questions';
  // const Questions({Key? key}) : super(key: key);
  // final courseId;
  // final userAns;
  // Questions(this.courseId, this.userAns);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  Map<String, List> userAns = {};
  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final exams = Provider.of<Exams>(context).findExamById(courseId).toList();
    // Iterable<Map<String, String>>? correctAns =
    //     exams.map((x) => {x.examID: x.ans[ansIndex!]});
    // print(correctAns);

    return Scaffold(
      appBar: AppBar(
        title: Text('$subjectName Exams'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: false,
                  itemCount: exams.length,
                  itemBuilder: (context, index) {
                    return QuizNum("${exams[index].question}", exams[index].ans,
                        exams[index].ansIndex, exams[index].examID, userAns);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Result.RouteName,
                    arguments: userAns,
                  );
                },
                child: Center(child: Text("Result")))
          ],
        ),
      ),
    );
  }
}
