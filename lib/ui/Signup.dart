import 'package:flutter/material.dart';
import 'package:temaribet/reusable/style.dart';

class SignUpPage extends StatefulWidget {
  static const RouteName = '/signup';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _schoolTypes = ["Public", "Private", "Missionary"];
  var _grades = ["Grade 9", "Grade 10", "Grade 11", "Grade 12"];
  var _gender = ["Male", "Female"];
  var _region = [
    "Addis Ababa",
    "Afar",
    "Amhara",
    "Benshangul",
    "Dire dawa",
    "Harari",
    "Gambela",
    "Oromia",
    "Sidama",
    "SNNP",
    "Somalia"
  ];
  var _currentSelectedValue = 'Private';
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildPhoneNumberField(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Grade',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildDropDownField(_grades, "Grade 9"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildDropDownField(_gender, "Male"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildPhoneNumberField(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Region',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildDropDownField(_region, "Addis Ababa"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'School Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildPhoneNumberField(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'School Type',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      _buildDropDownField(_schoolTypes, _currentSelectedValue),
                      SizedBox(
                        height: 20,
                      ),
                      _submitButton(),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/");
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
          'Continue',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildDropDownField(List<String> data, String init) {
    return (InputDecorator(
      decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black),
          errorStyle: TextStyle(),
          hintText: init,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
      isEmpty: init == '',
      child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
        value: init,
        isDense: true,
        onChanged: (String? newValue) {
          setState(() {
            init = newValue!;
          });
        },
        items: data
            .map((e) => DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
      )),
    ));
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
        // filled: true,
        fillColor: Theme.of(context).cardTheme.color,
      ),
      cursorColor: Colors.black12,
    );
  }
}
