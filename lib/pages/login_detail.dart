import 'package:flutter/material.dart';
import 'package:HarDorm/pages/scan_dorm.dart';

class LoginDetail extends StatefulWidget {
  @override
  _LoginDetailState createState() => _LoginDetailState();
}

class _LoginDetailState extends State<LoginDetail> {
  void _submit(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => SelectDorm()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: new Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff3B5998),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff385998), Color(0xff1DA1F2)])),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/3.png',
                    alignment: Alignment.topRight,
                    height: 70,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('Hardorm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ))),
                  SizedBox(height: 30),
                  Image.asset('assets/person.png', height: 130),
                  Container(
                      padding: EdgeInsets.only(left: 40, top: 30),
                      child: Row(children: <Widget>[
                        Text(
                          'FirstName*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ])),
                  new Container(
                      height: 45,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                            hintStyle: new TextStyle(color: Colors.grey[800]),
                            border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(25.0))),
                            fillColor: Colors.white,
                            filled: true),
                      )),
                  new Container(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: new Row(children: <Widget>[
                        Text(
                          'LastName*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ])),
                  new Container(
                      height: 45,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Column(children: <Widget>[
                        Expanded(
                            child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(25.0))),
                              fillColor: Colors.white,
                              filled: true),
                        )),
                      ])),
                  new Container(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: new Row(children: <Widget>[
                        Text(
                          'Phone Number*',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ])),
                  new Container(
                      height: 45,
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Column(children: <Widget>[
                        Expanded(
                            child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                              hintStyle: new TextStyle(color: Colors.grey[800]),
                              border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(25.0))),
                              fillColor: Colors.white,
                              filled: true),
                        )),
                      ])),
                  new Container(
                      padding: EdgeInsets.only(left: 40, top: 20),
                      child: new Row(children: <Widget>[
                        Text(
                          'Would you like to find a roommate ? *',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ])),
                  new Container(child: RadioGroup()),
                  Container(
                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        RaisedButton(
                          padding: const EdgeInsets.all(13.0),
                          onPressed: () => _submit(context),
                          color: Colors.green,
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Image.asset(
                    'assets/3.png',
                    alignment: Alignment.bottomLeft,
                    height: 70,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Yes';

  // Group Value for Radio Button.
  int id = 2;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Radio(
                  activeColor: Colors.white,
                  value: 1,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Yes';
                      id = 1;
                    });
                  },
                ),
                Text(
                  'Yes',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white),
                ),
                Radio(
                  activeColor: Colors.white,
                  value: 2,
                  groupValue: id,
                  onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'No';
                      id = 2;
                    });
                  },
                ),
                Text(
                  'No',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white),
                ),
              ],
            ),
            if (id == 1)
             Container(
                height: 150,

                padding: EdgeInsets.only(left: 15, right: 40),
                child: TextField(
                  maxLines: 3,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: 'Introduce Yourself',
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0))),
                      fillColor: Colors.white,
                      filled: true),
                )),
          ],
        ));
  }
}
