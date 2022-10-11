// ignore_for_file: camel_case_types, implementation_imports, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, unused_local_variable

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class book extends StatefulWidget {
  const book({super.key});
  static const String routeName = '/book';
  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isHide = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlName.dispose();
    super.dispose();
  }

  void alertView() {
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200,
        child: new Column(children: <Widget>[
          new Text('Full Name: ${ctrlName.text}'),
          new Text('Email: ${ctrlEmail.text}'),
          new Text('Phone: ${ctrlPhone.text}'),
          new Text('City: ${ctrlCity.text}'),
          new ElevatedButton(
              onPressed: () {
                Navigator.pop(context, home.routeName);
              },
              child: new Text("OK"))
        ]),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Booking Form'),
          backgroundColor: Colors.brown,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
              child: Form(
                  key: _loginKey,
                  child: Column(children: [
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.people),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0))),
                      controller: ctrlName,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please fill the field';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0))),
                      controller: ctrlEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        return !EmailValidator.validate(value.toString())
                            ? 'Email tidak valid!'
                            : null;
                      },
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            labelText: "Phone",
                            prefixIcon: Icon(Icons.phone),
                            border: OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0))),
                        controller: ctrlPhone),
                    SizedBox(
                      height: 32,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                          labelText: "City",
                          prefixIcon: Icon(Icons.location_city),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0))),
                      controller: ctrlCity,
                    ),
                  ])),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 40),
              child: ElevatedButton(
                onPressed: () {
                  if (_loginKey.currentState!.validate()) {
                    Navigator.pop(context, home.routeName);
                    alertView();
                  } else {
                    Fluttertoast.showToast(
                        msg: "Please fill all fields!",
                        toastLength: Toast.LENGTH_SHORT,
                        fontSize: 14,
                        backgroundColor: Colors.redAccent,
                        textColor: Colors.white);
                  }
                },
                child: Text("Save Book"),
              ),
            )
          ],
        ));
  }
}
