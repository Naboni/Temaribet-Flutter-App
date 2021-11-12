import 'package:flutter/material.dart';
import 'package:temaribet/ui/quiz_choice.dart';

class QuizNum extends StatefulWidget {
  final String queContent;
  final List<String> ans;
  final int anserIndex;
  final String examId;
  final Map<String, List> userAns;

  QuizNum(
    this.queContent,
    this.ans,
    this.anserIndex,
    this.examId,
    this.userAns,
  );

  @override
  _QuizNumState createState() => _QuizNumState();
}

class _QuizNumState extends State<QuizNum> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // key: GlobalKey(),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${widget.queContent}",
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
                itemCount: widget.ans.length,
                itemBuilder: (context, index) {
                  return QuizChoice(
                    widget.ans[index],
                    widget.examId,
                    index,
                    widget.anserIndex,
                    widget.userAns,
                  );
                }),
          )
          // _choice('${ans[1]}'),
          // _choice('${ans[2]}'),
          // _choice('${ans[3]}'),
        ],
      ),
    );
  }
}
