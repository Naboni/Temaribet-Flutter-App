import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/flashes.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class FlashCard extends StatefulWidget {
  static const RouteName = '/flashCards';
  const FlashCard({Key? key}) : super(key: key);

  @override
  _FlashCardState createState() => _FlashCardState();
}

class _FlashCardState extends State<FlashCard> {
  bool? _showFrontSide;
  bool? _flipXAxis;

  @override
  void initState() {
    super.initState();
    _showFrontSide = true;
    _flipXAxis = true;
  }

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final flashes =
        Provider.of<Flashes>(context).findFlashById(courseId).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('$subjectName Flash Cards'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: RotatedBox(
              child: Icon(Icons.flip),
              quarterTurns: _flipXAxis! ? 0 : 1,
            ),
            onPressed: _changeRotationAxis,
          ),
        ],
      ),
      body: Center(
        // heightFactor: MediaQuery.of(context).size.height * 0.7,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Center(
                  child: CarouselSlider(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                        height: MediaQuery.of(context).size.height * 0.7,
                        viewportFraction: 1.0,
                        enlargeCenterPage: false,
                        reverse: false),
                    items: flashes
                        .map(
                          // (item) => _card(context, item),
                          (item) => _buildFlipAnimation(
                            item.flashTitle,
                            item.flashDetail,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Swipe to change'),
              SizedBox(
                height: 10,
              ),
              Text('Tap for description')
            ],
          ),
        ),
      ),
    );
  }

  // Container _card(BuildContext context, CardI item) {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * 0.7,
  //     width: MediaQuery.of(context).size.width * 0.9,
  //     child: Center(
  //       child: Card(
  //         shadowColor: blue,
  //         borderOnForeground: true,
  //         color: columbiaBlue,
  //         child: Container(
  //           child: Center(
  //             child: Padding(
  //               padding: const EdgeInsets.all(20.0),
  //               child: Center(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     Text(
  //                       item.title,
  //                       style: GoogleFonts.lato(
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 30.0,
  //                           color: blue),
  //                     ),
  //                     SizedBox(
  //                       height: 20.0,
  //                     ),
  //                     Text(
  //                       item.description,
  //                       // maxLines: ,
  //                       textAlign: TextAlign.center,
  //                       style: GoogleFonts.lato(
  //                           fontWeight: FontWeight.bold,
  //                           fontSize: 20.0,
  //                           color: blue),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  void _changeRotationAxis() {
    setState(() {
      _flipXAxis = !_flipXAxis!;
    });
  }

  void _switchCard() {
    setState(() {
      _showFrontSide = !_showFrontSide!;
    });
  }

  Widget _buildFlipAnimation(String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GestureDetector(
        onTap: _switchCard,
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 800),
          transitionBuilder: __transitionBuilder,
          layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
          child: _showFrontSide! ? _buildFront(title) : _buildRear(description),
          switchInCurve: Curves.easeInBack,
          switchOutCurve: Curves.easeInBack.flipped,
        ),
      ),
    );
  }

  Widget __transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, widget) {
        final isUnder = (ValueKey(_showFrontSide) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        final value =
            isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: _flipXAxis!
              ? (Matrix4.rotationY(value)..setEntry(3, 0, tilt))
              : (Matrix4.rotationX(value)..setEntry(3, 1, tilt)),
          child: widget,
          alignment: Alignment.center,
        );
      },
    );
  }

  Widget _buildFront(String title) {
    return __buildLayout(
      key: ValueKey(true),
      backgroundColor: Colors.blue,
      faceName: title,
      fontSz: 36,
      fontWeight: FontWeight.bold,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
          child: FlutterLogo(),
        ),
      ),
    );
  }

  Widget _buildRear(String description) {
    return __buildLayout(
      key: ValueKey(false),
      backgroundColor: Colors.blue.shade700,
      faceName: description,
      fontSz: 16,
      fontWeight: FontWeight.w300,
      height: 2,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcATop),
          child:
              Center(child: Text("Flutter", style: TextStyle(fontSize: 50.0))),
        ),
      ),
    );
  }

  Widget __buildLayout({
    Key? key,
    Widget? child,
    String? faceName,
    Color? backgroundColor,
    double? fontSz,
    FontWeight? fontWeight,
    double? height,
  }) {
    return Container(
      key: key,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Center(
          child: Text(faceName!,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: fontSz,
                fontWeight: fontWeight,
                height: height,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}

class CardI {
  String title;
  String description;
  CardI(this.title, this.description);
}

List<CardI> cards = [
  new CardI("Metamorphosis",
      "Metamorphosis is a biological process by which an animal physically develops after birth or hatching, involving a conspicuous and relatively abrupt change in the animal's body structure through cell growth and differentiation."),
  new CardI("Osmosis",
      "Osmosis is a process by which molecules of a solvent tend to pass through a semipermeable membrane from a less concentrated solution into a more concentrated one."),
  new CardI("Krebs cycle",
      "The Krebs cycle is a series of chemical reactions used by all aerobic organisms to generate energy through the oxidization of acetate—derived from carbohydrates, fats, and proteins —into carbon dioxide."),
  new CardI("Endocytosis",
      "Endocytosis is a cellular process in which substances are brought into the cell. The material to be internalized is surrounded by an area of cell membrane, which then buds off inside the cell to form a vesicle containing the ingested material. Endocytosis includes pinocytosis and phagocytosis.")
];
