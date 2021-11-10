import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/reusable/style.dart';
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
  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final exams = Provider.of<Exams>(context).findExamById(courseId).toList();
    // Iterable<Map<String, String>>? correctAns =
    //     exams.map((x) => {x.examID: x.ans[ansIndex!]});
    // print(correctAns);
    if (exams.length == userAns.length) {
      setState(() {
        _isButtonDisabled = false;
      });
    }
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
                    return _question(
                        "${exams[index].question}",
                        exams[index].ans,
                        exams[index].ansIndex,
                        exams[index].examID);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  _isButtonDisabled
                      ? null
                      : Navigator.pushNamed(context, Result.RouteName,
                          arguments: userAns);
                },
                child: Center(
                    child: _isButtonDisabled
                        ? Text("Result", style: TextStyle(color: Colors.grey))
                        : Text("Result")))
          ],
        ),
      ),
    );
  }

  int score = 0;
  int? ansIndex;
  bool _isButtonDisabled = true;

  Map<String, List> userAns = {};

  bool isPressed = false;
  Color pressed = Colors.blue;
  Color unpressed = Colors.grey[800]!;
  Color rong = Colors.red;
  Color right = Colors.green;
  String _selectedIndex = "";
  _onSelected(String x) {
    setState(() => _selectedIndex = x);
  }

  int? _selectedChoice;
  _onSelectedChoice(int i) {
    setState(() {
      _selectedChoice = i;
      ansIndex = i;
    });
  }

  Widget _question(
      String queContent, List<String> ans, int anserIndex, String examId) {
    return Padding(
      // key: GlobalKey(),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$queContent",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          // for (var i = 0; i < ans.length; i++) _choice('${ans[i]}')
          Container(
            height: 320,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: ans.length,
                itemBuilder: (context, index) {
                  return _choice(ans[index], examId, index, anserIndex);
                }),
          )
          // _choice('${ans[1]}'),
          // _choice('${ans[2]}'),
          // _choice('${ans[3]}'),
        ],
      ),
    );
  }

  Widget _choice(
      String chooseContent, String examId, int index, int anserIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("I am clicked");
          print(chooseContent);
          userAns.addAll({
            examId: [chooseContent, index, anserIndex]
          });
          print(userAns);
          isPressed = true;
          _onSelected(examId);
          _onSelectedChoice(index);
        });
      },
      child: Container(
        // height: 350,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: _selectedIndex != "" && _selectedIndex == examId
              ? _selectedChoice != null && _selectedChoice == index
                  ? Border.all(color: pressed)
                  : Border.all(color: unpressed)
              : Border.all(color: unpressed),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$chooseContent",
              style: TextStyle(
                  color: _selectedIndex != "" && _selectedIndex == examId
                      ? _selectedChoice != null && _selectedChoice == index
                          ? Colors.blue[500]
                          : Colors.grey[800]
                      : Colors.grey[800],
                  fontSize: 16),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: _selectedIndex != "" && _selectedIndex == examId
                          ? _selectedChoice != null && _selectedChoice == index
                              ? Colors.blue[500]!
                              : Colors.grey[800]!
                          : Colors.grey[800]!)),
            )
          ],
        ),
      ),
    );
  }
}
