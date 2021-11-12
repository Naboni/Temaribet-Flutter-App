import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/exams.dart';

class QuizChoice extends StatefulWidget {
  final String chooseContent;
  final String examId;
  final int index;
  final int anserIndex;
  final Map<String, List> userAns;

  QuizChoice(
    this.chooseContent,
    this.examId,
    this.anserIndex,
    this.index,
    this.userAns,
  );
  // const QuizChoice({ Key? key }) : super(key: key);

  @override
  _QuizChoiceState createState() => _QuizChoiceState();
}

class _QuizChoiceState extends State<QuizChoice> {
  // Map<String, List> userAns = {};
  bool isPressed = false;
  String _selectedIndex = "";
  int? ansIndex;
  Color pressed = Colors.blue;
  Color unpressed = Colors.grey[800]!;
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

  // void saveAns(BuildContext context) {
  //   Provider.of<Exams>(context).saveAns(
  //     widget.chooseContent,
  //     widget.examId,
  //     widget.index,
  //     widget.anserIndex,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // Map<String, List> userAns = Provider.of<Exams>(context).getUserAns;
    return GestureDetector(
      onTap: () {
        // saveAns(context);
        setState(() {
          print("I am clicked");
          print(widget.chooseContent);
          widget.userAns.addAll({
            widget.examId: [
              widget.chooseContent,
              widget.index,
              widget.anserIndex
            ]
          });
          print(widget.userAns);
          isPressed = true;
          _onSelected(widget.examId);
          _onSelectedChoice(widget.index);
        });
      },
      child: Container(
        // height: 350,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: _selectedIndex != "" && _selectedIndex == widget.examId
              // ? _selectedChoice != null && _selectedChoice == widget.index
              ? Border.all(color: pressed)
              : Border.all(color: unpressed),
          // : Border.all(color: unpressed),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.chooseContent}",
              style: TextStyle(
                  color: _selectedIndex != "" && _selectedIndex == widget.examId
                      // ? _selectedChoice != null && _selectedChoice == widget.index
                      ? Colors.blue[500]
                      : Colors.grey[800],
                  // : Colors.grey[800],
                  fontSize: 16),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                      color: _selectedIndex != "" &&
                              _selectedIndex == widget.examId
                          // ? _selectedChoice != null && _selectedChoice == widget.index
                          ? Colors.blue[500]!
                          : Colors.grey[800]!)),
              // : Colors.grey[800]!)),
            )
          ],
        ),
      ),
    );
  }
}
