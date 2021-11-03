import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/lectures.dart';
import 'package:temaribet/reusable/style.dart';

class LecturePage extends StatefulWidget {
  static final routeName = "/lecture";
  const LecturePage({Key? key}) : super(key: key);

  @override
  _LecturePageState createState() => _LecturePageState();
}

class _LecturePageState extends State<LecturePage> {
  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    // final lectures = Provider.of<Lectures>(context);
    final lecture =
        Provider.of<Lectures>(context).findByCourseId(courseId).toList();
    print(lecture);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Stack(children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: BetterPlayer.network(
                    "https://videoappminas.herokuapp.com/bigbuck.mp4",
                    betterPlayerConfiguration: BetterPlayerConfiguration(
                      allowedScreenSleep: true,
                      autoPlay: false,
                      showPlaceholderUntilPlay: true,
                      // placeholder: /,
                      fit: BoxFit.fill,
                      autoDetectFullscreenDeviceOrientation: true,
                      aspectRatio: 16 / 9,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20,
                    ),
                    color: Colors.white,
                    // size: 30,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )
              ]),
            ),
            Container(
              // height: MediaQuery.of(context).size.height * 0.7,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "This is Lecture Title",
                      style: GoogleFonts.lato(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text('2543 views'),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Next',
                              style: GoogleFonts.beVietnam(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: red)),
                          Text('1 of 12',
                              style:
                                  GoogleFonts.lato(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      // height: 222,
                      child: Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: lecture.length,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildNextVideosList(
                              context,
                              "${lecture[index].lectureName}",
                              "Basic explanation of the topic.",
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget _buildNextVideosList(
    BuildContext context, String title, String description) {
  return (Card(
    borderOnForeground: true,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.play_arrow)),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.jaldi(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(description)
            ],
          )
        ],
      ),
    ),
  ));
}
