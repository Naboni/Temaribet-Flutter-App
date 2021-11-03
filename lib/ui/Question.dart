import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/ui/result.dart';

class Questions extends StatelessWidget {
  static const RouteName = 'questions';
  const Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final exams = Provider.of<Exams>(context).findExamById(courseId).toList();
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
                      );
                    },
                  )
                  // ListView(
                  //   children: [
                  //     Column(
                  //       children: [
                  // _question(1, "Choose the best footballer ever?"),
                  //         _question(2, "Choose the best footballer ever?"),
                  //         _question(3, "Choose the best footballer ever?"),
                  //         _question(4, "Choose the best footballer ever?"),
                  //         _question(5, "Choose the best footballer ever?"),
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //         ElevatedButton(
                  //           onPressed: () {
                  //             Navigator.pushNamed(context, Result.RouteName);
                  //           },
                  //           child: Center(
                  //             child: Text("Result"),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Result.RouteName);
              },
              child: Center(
                child: Text("Result"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _question(String queContent, List<String> ans, int ansIndex) {
    return Padding(
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
          _choice('${ans[0]}'),
          _choice('${ans[1]}'),
          _choice('${ans[2]}'),
          _choice('${ans[3]}'),
        ],
      ),
    );
  }

  Widget _choice(String chooseContent) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue[500]!),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$chooseContent",
              style: TextStyle(color: Colors.blue[500], fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
