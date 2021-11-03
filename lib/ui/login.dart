import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temaribet/reusable/style.dart';
import 'package:temaribet/ui/Signup.dart';

class LoginPage extends StatefulWidget {
  static const RouteName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: Text('Enter your phone number',
                            style: GoogleFonts.lato(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: Center(child: _buildPhoneNumberField()),
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Format Should be '),
                              Text(
                                '+251x xxxxxxxxx',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                              color: blue,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(90, 10, 90, 10),
                                child: Text('Continue',
                                    style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account signup "),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, SignUpPage.RouteName),
                        child: Text(
                          'here',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: blue),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return TextFormField(
      // onChanged: (value) => _phone = value.trim(),
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Phone number',
        labelStyle: Theme.of(context).textTheme.bodyText1,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        // alignLabelWithHint: true,
        prefixIcon: Icon(
          Icons.alternate_email,
          color: Theme.of(context).iconTheme.color,
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: Theme.of(context).cardTheme.color,
      ),
      cursorColor: Colors.black12,
    );
  }
}
