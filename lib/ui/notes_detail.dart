import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:temaribet/providers/topics.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class NoteDetails extends StatefulWidget {
  static const RouteName = '/note-details';

  @override
  _NoteDetailsState createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  bool _isLoading = true;
  late PDFDocument _pdf;

  void _loadFile() async {
    // Load the pdf file from the internet
    _pdf = await PDFDocument.fromAsset('assets/thermodynamics.pdf');
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadFile();
  }

  @override
  Widget build(BuildContext context) {
    final topicId = ModalRoute.of(context)!.settings.arguments as String;
    final topic = Provider.of<Topics>(context).findById(topicId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Thermodynmicss'),
      ),
      body: Center(
          child: _isLoading
              ? Center(child: CircularProgressIndicator())
              : PDFViewer(document: _pdf)),
    );
    // Scaffold(
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    //         backgroundColor: Theme.of(context).primaryColor,
    //         expandedHeight: 200,
    //         floating: true,
    //         pinned: true,
    //         flexibleSpace: FlexibleSpaceBar(
    //           background: Image.network(
    //             "https://images.unsplash.com/photo-1628595351029-c2bf17511435?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1032&q=80",
    //             fit: BoxFit.cover,
    //           ),
    //           title: Text(
    //             "${topic.noteTopics}",
    //             style: TextStyle(
    //               fontSize: 18,
    //               fontWeight: FontWeight.normal,
    //             ),
    //             textAlign: TextAlign.center,
    //           ),
    //           centerTitle: true,
    //         ),
    //         // title: Text("Biology"),
    //       ),
    //       buildImages(context, topic.noteContent),
    //     ],
    //   ),
    // );
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
