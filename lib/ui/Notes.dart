import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/providers/topics.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/notes_detail.dart';

class Notes extends StatelessWidget {
  static const RouteName = '/notes';
  const Notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courseId = ModalRoute.of(context)!.settings.arguments as String;
    // final courseId = ModalRoute.of(context)!.settings.arguments as String;
    final subjectName =
        Provider.of<Subjects>(context).findById(courseId).courseName;
    final topics = Provider.of<Topics>(context).findByNoteId(courseId).toList();
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: blue,
        //   title: Text("Biology/ Topic One"),
        // ),
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          expandedHeight: 200,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://www.lbcc.edu/sites/main/files/imagecache/carousel/main-images/hero-biology.jpg?1577830849",
              fit: BoxFit.cover,
            ),
            title: Text("$subjectName"),
            centerTitle: true,
          ),
          // title: Text("Biology"),
        ),
        // buildImages(context),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            //           // reverse: true,
            child: Column(
              children: [
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: topics.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return _noteCards(
                        context,
                        "${topics[index].noteTopics}",
                        "${index + 1}",
                        "${topics[index].noteContent}",
                        "${topics[index].id}");
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

Card _noteCards(BuildContext context, String title, String id,
    String description, String topicId) {
  return Card(
    elevation: 8.0,
    margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        NoteDetails.RouteName,
        arguments: topicId,
      ),
      child: Container(
        decoration: BoxDecoration(color: Color(0XFF1497F5)),
        child: ListTile(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: Container(
              padding: EdgeInsets.only(right: 12.0),
              decoration: new BoxDecoration(
                  border: new Border(
                      right:
                          new BorderSide(width: 1.0, color: Colors.white24))),
              child: Text(
                "$id. ",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            title: Text(
              "$title",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

            subtitle: Row(
              children: <Widget>[
                Icon(Icons.linear_scale, color: Colors.yellowAccent),
                Text(" Intermediate", style: TextStyle(color: Colors.white))
              ],
            ),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Colors.white, size: 30.0)),
      ),
    ),
  );
}

  // _buildNoteCards(
  //     BuildContext context, String title, int index, String description) {
  //   return GestureDetector(
  //     onTap: () => Navigator.pushNamed(context, NoteDetails.RouteName),
  //     child: Card(
  //       child: Padding(
  //         padding: const EdgeInsets.fromLTRB(20, 20, 2, 20),
  //         child: Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text("$index ,",
  //                 style: GoogleFonts.lato(
  //                     fontSize: 20.0, fontWeight: FontWeight.bold)),
  //             SizedBox(
  //               width: 10,
  //             ),
  //             Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(title,
  //                     style: GoogleFonts.lato(
  //                         fontSize: 20.0, fontWeight: FontWeight.bold)),
  //                 Text(
  //                   description,
  //                   style: GoogleFonts.lato(fontSize: 15.0),
  //                   maxLines: 1,
  //                   softWrap: true,
  //                   overflow: TextOverflow.fade,
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }
