import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/lectures.dart';
import 'package:temaribet/providers/topics.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/Exams.dart';
import 'package:temaribet/ui/Lecture.dart';
import 'package:temaribet/ui/Notes.dart';
import 'package:temaribet/ui/Question.dart';
import 'package:temaribet/ui/flash%20cards.dart';
import 'package:temaribet/ui/mind_map.dart';
import 'package:temaribet/ui/quiz/quiz_screen.dart';
import 'package:provider/provider.dart';

class Courses extends StatelessWidget {
  static final routeName = "/courses";
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final subjectsData = Provider.of<Subjects>(context);
    // final subjects = subjectsData.courses;
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct = Provider.of<Subjects>(context).findById(courseId);
    final lecture = Provider.of<Lectures>(context).findByCourseId(courseId);
    final note = Provider.of<Topics>(context).findByNoteId(courseId);
    final exam = Provider.of<Exams>(context).findExamById(courseId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(loadedProduct.courseName),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.95,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    _banner(
                        context,
                        "assets/images/presentation.png",
                        "Lecture",
                        "${lecture.length} videos",
                        "1hr36min",
                        false,
                        LecturePage.routeName,
                        courseId),
                    _banner(
                        context,
                        "assets/images/book.png",
                        "Notes",
                        "${note.length} topics",
                        "",
                        false,
                        Notes.RouteName,
                        courseId),
                    _banner(
                        context,
                        "assets/images/lamp.png",
                        "Exam Prep",
                        "Flash Cards",
                        "Mind Maps",
                        true,
                        FlashCard.RouteName,
                        courseId),
                    _banner(
                        context,
                        "assets/images/exam.png",
                        "Exam",
                        "${exam.length} questions",
                        "",
                        false,
                        // Exam.RouteName,
                        Questions.RouteName,
                        // QuizScreen.RouteName,
                        courseId)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _banner(BuildContext context, String imgUrl, String name, String size,
    String length, bool flash, String routeName, String id) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, routeName, arguments: id);
    },
    child: Container(
      // margin: EdgeInsets.only(top: 25),
      height: 140,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 110,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0XFFA8E7E9), Color(0XFF1597E5)]),
                borderRadius: BorderRadius.circular(18)),
            child: Container(
              margin: EdgeInsets.only(left: 130),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25, top: 15, bottom: 5),
                    child: Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 5),
                    child: GestureDetector(
                      onTap: flash
                          ? () {
                              Navigator.pushNamed(context, FlashCard.RouteName);
                            }
                          : null,
                      child: flash
                          ? Text(
                              size,
                              style: GoogleFonts.lato(
                                  color: flash ? blue : null,
                                  decoration:
                                      flash ? TextDecoration.underline : null),
                            )
                          : Text(
                              size,
                              style: TextStyle(
                                fontSize: 16,
                                height: 1.3,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  length != ""
                      ? Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, MindMap.RouteName),
                            child: Text(
                              length,
                              style: GoogleFonts.lato(
                                  color: flash ? blue : Colors.white,
                                  decoration:
                                      flash ? TextDecoration.underline : null),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            ),
          ),
          Positioned(
            child: Image(
              image: AssetImage(imgUrl),
              height: 120,
            ),
            bottom: 20,
            left: 20,
          )
        ],
      ),
    ),
  );
}

Widget _buildCards(BuildContext context, String imgUrl, String name,
    String size, String length, bool flash, String routeName) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, LecturePage.routeName);
      // Navigator.pushNamed(context, Notes.RouteName);
      Navigator.pushNamed(context, routeName);
    },
    child: (Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.centerLeft,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name,
                        style: GoogleFonts.lato(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: flash
                              ? () {
                                  Navigator.pushNamed(
                                      context, FlashCard.RouteName);
                                }
                              : null,
                          child: Text(
                            size,
                            style: GoogleFonts.lato(
                                color: flash ? blue : null,
                                decoration:
                                    flash ? TextDecoration.underline : null),
                          ),
                        ),
                        length != ""
                            ? Container(
                                child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: Text("|"),
                              ))
                            : Container(),
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, MindMap.RouteName),
                          child: Text(
                            length,
                            style: GoogleFonts.lato(
                                color: flash ? blue : null,
                                decoration:
                                    flash ? TextDecoration.underline : null),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Image(
                image: AssetImage(imgUrl),
                width: 50.0,
                height: 50.0,
              )
            ],
          ),
        ),
      ),
    )),
  );
}
