import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:HarDorm/common_widgets/custom_raised_button.dart';


class ThirdPartyButton extends CustomRaisedButton {
  ThirdPartyButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    double width,
    double height,
    @required String iconName,    
  })  : assert(iconName != null),
        assert(text != null),
        super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(iconName, width: width,height: height),
              Text(
                text,
                style: TextStyle(color: textColor, fontSize: 17.0,fontFamily: "Poppins"),
              ),
              // Opacity(opacity: 1.0, child: Image.asset(iconName,width: width,height: height,)),
            ],
          ),
          color: color,
          onPressed: onPressed,
        );
}