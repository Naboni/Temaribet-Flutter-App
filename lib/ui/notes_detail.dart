import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/providers/topics.dart';
import 'package:temaribet/reusable/style.dart';

class NoteDetails extends StatelessWidget {
  static const RouteName = '/note-details';
  const NoteDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topicId = ModalRoute.of(context)!.settings.arguments as String;
    // final subjectName =
    //     Provider.of<Subjects>(context).findById(courseId).courseName;
    final topic = Provider.of<Topics>(context).findById(topicId);

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
              "https://images.unsplash.com/photo-1628595351029-c2bf17511435?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80",
              fit: BoxFit.cover,
            ),
            title: Text(
              "${topic.noteTopics}",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
          ),
          // title: Text("Biology"),
        ),
        buildImages(context, topic.noteContent),
        // SliverToBoxAdapter(
        //   child: SingleChildScrollView(
        //     // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //     child: Column(
        //       children: [
        //         ListView.builder(
        //           shrinkWrap: true,
        //           itemCount: topic.noteContent.length,
        //           itemBuilder: (context, index) {
        //             return Container(
        //               child: Column(
        //                 children: [
        //                   Text(
        //                     "${topic.noteContent[0]}",
        //                     style: TextStyle(fontSize: 24),
        //                   ),
        //                   SizedBox(
        //                     height: 10,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[1]}",
        //                     style: TextStyle(
        //                         fontSize: 16, fontWeight: FontWeight.w300),
        //                     textAlign: TextAlign.justify,
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[2]}",
        //                     style: TextStyle(fontSize: 24),
        //                   ),
        //                   SizedBox(
        //                     height: 10,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[3]}",
        //                     style: TextStyle(
        //                         fontSize: 16, fontWeight: FontWeight.w300),
        //                     textAlign: TextAlign.justify,
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[4]}",
        //                     style: TextStyle(fontSize: 24),
        //                   ),
        //                   SizedBox(
        //                     height: 10,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[5]}",
        //                     style: TextStyle(
        //                         fontSize: 16, fontWeight: FontWeight.w300),
        //                     textAlign: TextAlign.justify,
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[6]}",
        //                     style: TextStyle(fontSize: 24),
        //                   ),
        //                   SizedBox(
        //                     height: 10,
        //                   ),
        //                   Text(
        //                     "${topic.noteContent[7]}",
        //                     style: TextStyle(
        //                         fontSize: 16, fontWeight: FontWeight.w300),
        //                     textAlign: TextAlign.justify,
        //                   ),
        //                   SizedBox(
        //                     height: 20,
        //                   ),
        //                 ],
        //               ),
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    )
        // FutureBuilder(
        //     future: rootBundle.loadString("markdown/hello.md"),
        //     builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        //       if (snapshot.hasData) {
        //         return Center(
        //             child: Markdown(
        //           data: snapshot.data!,
        //           selectable: true,
        //         ));
        //       }

        //       return Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     }),
        );
  }

  Widget buildImages(BuildContext context, List<String> topic) =>
      SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Text(
                "${topic[0]}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${topic[1]}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${topic[2]}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${topic[3]}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${topic[4]}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${topic[5]}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${topic[6]}",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "${topic[7]}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      );
}