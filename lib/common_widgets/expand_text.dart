import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

class ExpandText extends StatefulWidget {
  @override
  _ExpandTextState createState() => _ExpandTextState();
}

class _ExpandTextState extends State<ExpandText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: ExpandableText("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
          style: TextStyle(color: Colors.black),
          expandText: 'Read more', 
          collapseText: 'Read less',
          linkColor: Colors.indigo,
          maxLines: 4,
          ),
        ),
      ),
    );
  }
}
