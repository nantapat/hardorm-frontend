import 'package:flutter/material.dart';
import 'package:hardorm/pages/landing_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hardorm Demo',
      theme: ThemeData(
      primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      home: LandingPage(),
    );
  }
}

  