import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/Signup.dart';
import 'package:temaribet/ui/login.dart';

class LandingPage extends StatefulWidget {
  static const RouteName = "/landing";
  LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset("assets/images/logo.png"),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text("temaribet",
                      style: GoogleFonts.lato(
                          fontSize: 30,
                          color: red,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * .7,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'This is Slogan Text',
                      style: GoogleFonts.lato(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Subheading text is going to be here',
                        style: GoogleFonts.lato(fontSize: 15)),
                    SizedBox(
                      height: 80,
                    ),
                    _submitButton(),
                    SizedBox(
                      height: 20,
                    ),
                    _signUpButton(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "How to test widgets using the widget testing framework How to test the apps UI using integration tests How to test the apps performance using integration tests",
                      textAlign: TextAlign.center,
                    ),
                  ]),
            )
          ]),
        ),
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, LoginPage.RouteName);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: blue.withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: blue),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SignUpPage.RouteName);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: blue, width: 2),
        ),
        child: Text(
          'Sign up',
          style: TextStyle(fontSize: 20, color: blue),
        ),
      ),
    );
  }
}
