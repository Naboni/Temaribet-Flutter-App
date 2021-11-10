import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/model/question.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/reusable/style.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);
  static const RouteName = '/result';
  @override
  Widget build(BuildContext context) {
    // final courseId = ModalRoute.of(context)!.settings.arguments as ;
    // print(courseId);
    // final subjectName =
    //     Provider.of<Subjects>(context).findById(courseId).courseName;
    // final exams = Provider.of<Exams>(context).findExamById(courseId).toList();
    // Iterable<Map<String, String>>? correctAns =
    //     exams.map((x) => {x.examID: x.ans[ansIndex!]});
    // print(correctAns);

    final userAns = ModalRoute.of(context)!.settings.arguments as Map;
    print(userAns);
    int score = 0;
    // bool? correct;
    userAns.forEach((key, value) {
      // print(value[1]);
      // print(${value[1] ${value[2]});
      if (value[1] == value[2]) {
        score++;
        // correct = true;
      }
      print(score);
    });
    String say = "";
    String imgUrl = "";
    if (score > 4) {
      say = "You did great";
      imgUrl = "assets/images/trophy.png";
    } else if (score == 3) {
      say = "Good job";
      imgUrl = "assets/images/parchment.png";
    } else if (score > 1) {
      say = "Not good";
      imgUrl = "assets/images/lamp.png";
    } else if (score == 0) {
      say = "Bad result";
      imgUrl = "assets/images/presentation.png";
    }
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColor),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // backgroundColor: blue,
            title: Text(
              'Exam',
              style: TextStyle(color: Colors.white),
            ),
            elevation: 0,
          ),
          body: ListView(
            children: <Widget>[
              _header(context, score, say, imgUrl),
              Center(
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(8),
                  // decoration: BoxDecoration(color: Colors.blue[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 420,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: userAns.length,
                            itemBuilder: (context, index) {
                              String key = userAns.keys.elementAt(index);
                              bool correct = true;
                              if (userAns[key][1] == userAns[key][2]) {
                                correct = true;
                              } else {
                                correct = false;
                              }
                              return Card(
                                elevation: 8.0,
                                margin: new EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 6.0),
                                child: Container(
                                  decoration:
                                      BoxDecoration(color: Color(0XFFB2F9FC)),
                                  child: ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20.0, vertical: 10.0),
                                    leading: Container(
                                      padding: EdgeInsets.only(right: 12.0),
                                      decoration: new BoxDecoration(
                                          border: new Border(
                                              right: new BorderSide(
                                                  width: 1.0,
                                                  color: Colors.white24))),
                                      child: Text(
                                        key,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 24),
                                      ),
                                    ),
                                    title: Text(
                                        "Correct Anser: ${userAns[key][0]}"),
                                    subtitle:
                                        Text("Your Anser: ${userAns[key][0]}"),
                                    trailing: correct
                                        ? Icon(Icons.check, color: Colors.green)
                                        : Icon(Icons.cancel_outlined,
                                            color: Colors.red),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(context, int score, String say, String imgUrl) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$say, ",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "$score/5",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                )
              ],
            ),
          ),
          Image(
            image: AssetImage("$imgUrl"),
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
