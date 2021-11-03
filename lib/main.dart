import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';
import 'package:temaribet/providers/flashes.dart';
import 'package:temaribet/providers/lectures.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/providers/topics.dart';
import 'package:temaribet/ui/Course.dart';
import 'package:temaribet/ui/Exams.dart';
import 'package:temaribet/ui/HomePage.dart';
import 'package:temaribet/ui/Landing.dart';
import 'package:temaribet/ui/Lecture.dart';
import 'package:temaribet/ui/Notes.dart';
import 'package:temaribet/ui/Question.dart';
import 'package:temaribet/ui/Signup.dart';
import 'package:temaribet/ui/flash%20cards.dart';
import 'package:temaribet/ui/login.dart';
import 'package:temaribet/ui/notes_detail.dart';
import 'package:temaribet/ui/quiz/quiz_screen.dart';
import 'package:temaribet/ui/quiz/score_screen.dart';
import 'package:temaribet/ui/result.dart';
import 'package:temaribet/ui/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Subjects>(
          create: (ctx) => Subjects(),
        ),
        ChangeNotifierProvider<Lectures>(
          create: (ctx) => Lectures(),
        ),
        ChangeNotifierProvider<Topics>(
          create: (ctx) => Topics(),
        ),
        ChangeNotifierProvider<Exams>(
          create: (ctx) => Exams(),
        ),
        ChangeNotifierProvider<Flashes>(
          create: (ctx) => Flashes(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0XFF0077b6),
        ),
        initialRoute: SignUpPage.RouteName,
        routes: {
          "/": (_) => HomePage(),
          Courses.routeName: (_) => Courses(),
          LecturePage.routeName: (_) => LecturePage(),
          Notes.RouteName: (_) => Notes(),
          Exam.RouteName: (_) => Exam(),
          FlashCard.RouteName: (_) => FlashCard(),
          Splash.RouteName: (_) => Splash(),
          LoginPage.RouteName: (_) => LoginPage(),
          LandingPage.RouteName: (_) => LandingPage(),
          SignUpPage.RouteName: (_) => SignUpPage(),
          NoteDetails.RouteName: (_) => NoteDetails(),
          QuizScreen.RouteName: (_) => QuizScreen(),
          ScoreScreen.RouteName: (_) => ScoreScreen(),
          Questions.RouteName: (_) => Questions(),
          Result.RouteName: (_) => Result(),
        },
      ),
    );
  }
}
