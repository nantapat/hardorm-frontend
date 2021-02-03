import 'package:flutter/material.dart';
import 'package:HarDorm/pages/landing_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hardorm Demo',
      theme: ThemeData(
      primarySwatch: Colors.indigo,
        fontFamily: 'Poppins',
      ),
      home: LandingPage(),
    );
  }
}

  