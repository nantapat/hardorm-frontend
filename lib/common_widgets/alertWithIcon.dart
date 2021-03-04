import 'package:flutter/material.dart';

class AlertWithIcon extends StatelessWidget {
  final String title, description, buttonText,important;
  final Image image;

  AlertWithIcon({this.title, this.description, this.buttonText, this.image,this.important});
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                ),
              ]),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                color: Colors.green
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              important,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(child: Text("Okay") ,
              onPressed: () {
                Navigator.pop(context);
              },
              ),
            )
          ]),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          
          child: CircleAvatar(
            backgroundColor: Colors.white,
        radius: 50,
        child: ClipOval(
          child: Image.asset('assets/components/success.png'),
        ),
        ),)
      ],
    );
  }
}
