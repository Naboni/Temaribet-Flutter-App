import 'package:flutter/material.dart';
import 'package:temaribet/data/questions.dart';
import 'package:temaribet/model/question.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/widget/check_box_widget.dart';
import 'package:temaribet/widget/custome_dialog_box.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final CarouselController buttonCarouselController;

  QuestionWidget(this.question, this.buttonCarouselController, {Key? key})
      : super(key: key);

  @override
  _QuestionWidgetState createState() =>
      _QuestionWidgetState(question, buttonCarouselController);
}

class _QuestionWidgetState extends State<QuestionWidget> {
  _QuestionWidgetState(this.item, this.buttonCarouselController);

  CarouselController buttonCarouselController;

  Question item;

  AppEnum _character = AppEnum.NON;

  bool _isSelectedA = false;
  bool _isSelectedB = false;
  bool _isSelectedC = false;
  bool _isSelectedD = false;

  int radio = 1;
  int check = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          item.type == check ? getCheckBoxWideget(item) : getRadioWidget(item),
          SizedBox(height: 30.0),
          actionButton(),
        ],
      ),
    );
  }

  onVerifyClick() {
    var msg = "";

    if (item.type == radio) {
      if (_character == AppEnum.optionA && item.optionA == item.ans ||
          _character == AppEnum.optionB && item.optionB == item.ans ||
          _character == AppEnum.optionC && item.optionC == item.ans ||
          _character == AppEnum.optionD && item.optionD == item.ans) {
        msg = 'Correct';
      } else {
        msg = "Incorrect";
      }
    } else {
      if (_isSelectedA && item.optionA == item.ans ||
          _isSelectedB && item.optionB == item.ans ||
          _isSelectedC && item.optionC == item.ans ||
          _isSelectedD && item.optionD == item.ans) {
        msg = 'Correct';
      } else {
        msg = 'Incorrect';
      }
    }
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Widget getRadioWidget(Question item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            item.question,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        RadioListTile(
            title: Text(item.optionA),
            value: AppEnum.optionA,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value as AppEnum;
              });
            }),
        RadioListTile(
            title: Text(item.optionB),
            value: AppEnum.optionB,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value as AppEnum;
              });
            }),
        RadioListTile(
            title: Text(item.optionC),
            value: AppEnum.optionC,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value as AppEnum;
              });
            }),
        RadioListTile(
            title: Text(item.optionD),
            value: AppEnum.optionD,
            groupValue: _character,
            onChanged: (value) {
              setState(() {
                _character = value as AppEnum;
              });
            })
      ],
    );
  }

  Widget getCheckBoxWideget(Question item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            item.question,
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        CheckBoxWidget(
          label: item.optionA,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelectedA,
          onChanged: (bool newValue) {
            setState(() {
              _isSelectedA = newValue;
            });
          },
        ),
        CheckBoxWidget(
          label: item.optionB,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelectedB,
          onChanged: (bool newValue) {
            setState(() {
              _isSelectedB = newValue;
            });
          },
        ),
        CheckBoxWidget(
          label: item.optionC,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelectedC,
          onChanged: (bool newValue) {
            setState(() {
              _isSelectedC = newValue;
            });
          },
        ),
        CheckBoxWidget(
          label: item.optionD,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelectedD,
          onChanged: (bool newValue) {
            setState(() {
              _isSelectedD = newValue;
            });
          },
        ),
      ],
    );
  }

  Widget actionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
          color: blue,
          child: Text(
            "Next",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () => onNextClick(),
        ),
        SizedBox(
          width: 20.0,
        ),
        RaisedButton(
          color: blue,
          child: Text(
            "Finish Exam",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialogBox(
                    title: "Your Result",
                    descriptions: "14/20",
                    text: "Back",
                  );
                });
          },
        ),
      ],
    );
  }

  onNextClick() {
    buttonCarouselController.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.linear);
  }
}
