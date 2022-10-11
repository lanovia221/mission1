// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:flutter_application_1/book.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(const MyApp());
}

//first flutter
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => home(),
      book.routeName: (context) => book(),
      '/book': (context) => book(),
      home.routeName: (context) => home()
    });
  }
}
