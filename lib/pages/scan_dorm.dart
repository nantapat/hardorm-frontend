import 'package:flutter/material.dart';
import 'package:hardorm/common_widgets/dropdown.dart';
import 'package:hardorm/common_widgets/faci.dart';
import 'package:hardorm/my_flutter_app_icons.dart';
import 'package:hardorm/pages/home.dart';

class SelectDorm extends StatefulWidget {
  @override
  _SelectDormState createState() => _SelectDormState();
}

class _SelectDormState extends State<SelectDorm> {
  final _formKey = GlobalKey<FormState>();

  void _home(BuildContext context) {
    Navigator.push(context,new MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        // leading: Icon(Icons.menu),
        title: Text(
          'HarDorm',
          style: TextStyle(fontSize: 18.0),
        ),
        actions: [
          Icon(
            IconHardorm.noti1,
            size: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              IconHardorm.chat,
              size: 20.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(
              IconHardorm.more_horiz,
              size: 20.0,
            ),
          ),
        ],
        // backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
              child: Form(
                key: _formKey,
                child: Card(
                  color: Colors.blue[300],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Destination',
                          style: TextStyle(
                              fontSize: 16.0,
                              // fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Container(
                          height: 40.0,
                          padding: EdgeInsets.only(right: 20),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  IconHardorm.find,
                                  size: 15.0,
                                  color: Colors.black,
                                ),
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0))),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Distance',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        DropDown(),
                        SizedBox(
                          height: 10.0,
                        ),
                        new Container(child: RadioGroup1()),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Fee range',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Acceptable electricity cost per unit',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Container(
                          height: 40.0,
                          padding: EdgeInsets.only(right: 20),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  IconHardorm.elec1,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0))),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Acceptable water cost per unit',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        new Container(
                          height: 40.0,
                          padding: EdgeInsets.only(right: 20),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  IconHardorm.water_drops,
                                  size: 20.0,
                                  color: Colors.black,
                                ),
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        const Radius.circular(5.0))),
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Facilities',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CheckboxOnchangedListener(),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 40.0, top: 80.0, bottom: 40.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              RaisedButton(
                                padding: const EdgeInsets.all(13.0),
                                onPressed: () => _home(context),
                                color: Colors.indigo,
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: Icon(IconHardorm.home,color: Colors.indigo,), onPressed: () {}),
            // Spacer(),
            IconButton(icon: Icon(IconHardorm.booking,color: Colors.indigo,), onPressed: () {}),
            IconButton(icon: Icon(IconHardorm.search_people,color: Colors.indigo,), onPressed: () {}),
            IconButton(icon: Icon(IconHardorm.user,color: Colors.indigo,), onPressed: () {}),            
          ],
        ),
      ),
    );
  }
}

class RadioGroup1 extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Yes';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
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
              'Daily',
              style: new TextStyle(fontSize: 17.0, color: Colors.black),
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
              'Monthly',
              style: new TextStyle(fontSize: 17.0, color: Colors.black),
            ),
          ],
        ),
      ],
    ));
  }
}
