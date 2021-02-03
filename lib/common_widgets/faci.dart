import 'package:flutter/material.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';


class CheckboxOnchangedListener extends StatefulWidget {
  @override
  CheckboxOnchangedListenerState createState() {
    return new CheckboxOnchangedListenerState();
  }
}

class CheckboxOnchangedListenerState extends State<CheckboxOnchangedListener> {
  String _selected;
  List<Map> _myJson = [
    {"id": '1', "name": "Parking"},
    {"id": '2', "name": "Restaurant"},
    {"id": '3', "name": "Non-smoking"},
    {"id": '4', "name": "Free WiFi"},
    {"id": '5', "name": "Swimming Pool"},
    {"id": '6', "name": "Fitness centre"},
    {"id": '7', "name": "Terrace"},
    {"id": '8', "name": "Flat-screen TV"},
    {"id": '9', "name": "Air conditioning"}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: SafeArea(
                  child: Container(
            height: 40.0,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 10,
                        bottom: 0,
                        top: 0,
                        child: new Icon(IconHardorm.fitness_facilities),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40.0),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: SafeArea(
                              child: DropdownButton<String>(
                                hint: new Text("Choose the facilities"),
                                value: _selected,
                                onChanged: (String newValue) {
                                  setState(() {
                                    _selected = newValue;
                                  });
                                  print(_selected);
                                },
                                items: _myJson.map((Map map) {
                                  return new DropdownMenuItem<String>(
                                    value: map["id"].toString(),
                                    child: Row(
                                      children: <Widget>[
                                        Checkbox(
                                          value: false,
                                          onChanged: (val) {
                                            print(val);
                                          },
                                        ),
                                        Container(
                                            padding: EdgeInsets.only(right: 0.0),
                                            child: Text(map["name"])),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
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
    );
  }
}
