import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:temaribet/providers/subjects.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/Course.dart';
import 'package:temaribet/ui/mian_drawer.dart';
import '../providers/subjects.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColor),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),
            title: Text('Home'),
            actions: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=333&q=80'),
                ),
              )
            ],
            elevation: 0,
          ),
          key: _scaffoldKey,
          drawer: MainDrawer(),
          body: ListView(
            children: <Widget>[
              _header(),
              _subjects(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 25),
            child: Row(
              children: [
                Text(
                  "Welcome, ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "John Doe",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                )
              ],
            ),
          ),
          Text(
            "Enjoy Temaribet App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Choose any items from below and start exploring the application. Visit our website for more information.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  _launchURL();
                },
                icon: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
                label: Text(
                  "Continue from last",
                  style: TextStyle(),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[300],
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                ),
                onPressed: () {
                  _launchURL();
                },
                icon: Icon(
                  Icons.web,
                  color: Colors.white,
                ),
                label: Text(
                  "Visit Website",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _subjects() {
    final subjectsData = Provider.of<Subjects>(context);
    final subjects = subjectsData.courses;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Select a subject",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .5,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 2.5 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: subjects.length,
            itemBuilder: (BuildContext ctx, index) {
              return _buildSubjectList(
                subjects[index].courseIcon,
                subjects[index].courseName,
                context,
                subjects[index].id,
              );
            },
          ),
        )
      ],
    );
  }

  _launchURL() async {
    const url = 'https://tutor.temari-bet.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

Widget _buildSubjectList(
  String imageUrl,
  String subjectName,
  BuildContext context,
  String courseId,
) {
  return GestureDetector(
    onTap: () {
      log(subjectName);
      Navigator.pushNamed(
        context,
        Courses.routeName,
        arguments: courseId,
      );
    },
    child: (Column(
      children: [
        Image(
          image: AssetImage(imageUrl),
          width: 50,
          height: 50,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(subjectName,
            style:
                GoogleFonts.numans(fontWeight: FontWeight.bold, fontSize: 11))
      ],
    )),
  );
}
