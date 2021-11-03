import 'package:temaribet/model/question.dart';

enum AppEnum { optionA, optionB, optionC, optionD, NON }
final List<Question> questions = [
  Question(
      "'OS' computer abbreviation usually means ?",
      "Order of Significance",
      "Open Software",
      "Operating System",
      "Optical Sensor",
      "Operating System",
      1),
  Question(
      "'.MOV' extension refers usually to what kind of file?",
      "Image file",
      "Animation/movie file",
      "Audio file",
      "MS Office document",
      "Animation/movie file",
      2),
  Question(
      "Who developed Yahoo?",
      "Dennis Ritchie & Ken Thompson",
      "David Filo & Jerry Yang",
      "Vint Cerf & Robert Kahn",
      "Steve Case & Jeff Bezos",
      "Dennis Ritchie & Ken Thompson",
      2),
  Question("What does AM mean?", "Angelo marconi", "Anno median",
      "Amplitude modulation", "Amperes", "Amplitude modulation", 1),
  Question(
      "Where is the headquarters of Intel located?",
      "Redmond, Washington",
      "Tucson, Arizona",
      "Santa Clara, California",
      "Richmond, Virginia",
      "Santa Clara, California",
      1)
];
