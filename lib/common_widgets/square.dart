
import 'package:flutter/material.dart';

class Square extends StatelessWidget{
  final color;
  final h;
  final w;

  Square({ this.color = Colors.white, this.h = 100.0 , this.w = 150.0});
  
  build(context) {
  return Container(
    width: w,
    height: h,
    color: color,
  );
  }
}