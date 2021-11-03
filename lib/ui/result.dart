import 'package:flutter/material.dart';
import 'package:temaribet/reusable/style.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);
  static const RouteName = '/result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: Text(
          'Exam',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          // decoration: BoxDecoration(color: Colors.blue[100]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Result",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "4/5",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
