import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hardorm/common_widgets/custom_raised_button.dart';


class SignInButton extends CustomRaisedButton {
  //constructor
  SignInButton({
    @required String text,
    Color color,
    Color textColor,     
    VoidCallback onPressed,
  }) : assert(text != null), //call superclass constructor
        super(
          //parameter
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 18.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
