
import 'package:HarDorm/pages/homeSystem.dart';
import 'package:flutter/material.dart';
import 'package:HarDorm/common_widgets/checkbox.dart';
import 'package:HarDorm/common_widgets/dropdown.dart';
// import 'package:hardorm/common_widgets/faci.dart';
import 'package:HarDorm/pages/home.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';

class SelectDorm extends StatefulWidget {
  @override
  _SelectDormState createState() => _SelectDormState();
}

class _SelectDormState extends State<SelectDorm> {
  final _formKey = GlobalKey<FormState>();
  RangeValues values = RangeValues(500.0, 5000.0);
  RangeLabels labels = RangeLabels('500', '5000');
  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  void _home(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => Home()));
  }

  // void _bottombar(BuildContext context) {
  //   Navigator.push(
  //       context, new MaterialPageRoute(builder: (context) => BottomBar()));
  // }
  
     
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
                    IconHardorm.notification,
                    size: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      IconHardorm.chatcircle,
                      size: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      IconHardorm.more,
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
                                Container(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Price',
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.black),
                                      ),
                                      Text(
                                        '฿500 - 5,000',
                                        style: TextStyle(
                                            fontSize: 16.0, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                new Container(
                                  padding: EdgeInsets.only(left: 0, right: 20),
                                  child: RangeSlider(
                                    activeColor: Colors.white,
                                    inactiveColor: Colors.indigo,
                                    min: 500.0,
                                    max: 5000.0,
                                    values: values,
                                    labels: labels,
                                    divisions: 5,
                                    onChanged: (value) {
                                      print('START: ${value.start}, END:${value.end}');
                                      setState(
                                        () {
                                          values = value;
                                          labels = RangeLabels(
                                            '${value.start.toInt().toString()}\฿',
                                            '${value.end.toInt().toString()}\฿',
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                new Container(
                                    padding: EdgeInsets.only(right: 0),
                                    child: RadioGroup1()),
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
                                Container(
                                  padding: EdgeInsets.only(right: 20),
                                  color: Colors.blue[300],
                                  // width: 30,
                                  height: 300,
                                  child: CheckFacilities(),
                                ),
                                
                                // CheckboxOnchangedListener(),
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
                                        // onPressed: () => _bottombar(context),
                                        
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
              // bottomNavigationBar:BottomBar(),
              // bottomNavigationBar: BottomNavigationBar(
              //   backgroundColor: Colors.grey[300],
              //   onTap: onTapped,
              //   currentIndex: currentTabIndex,
              //   type: BottomNavigationBarType.fixed,
              //   items: [
              //     BottomNavigationBarItem(
              //       icon: Icon(
              //         IconHardorm.home,
              //         // color: Colors.blue
              //       ),
              //       title: Text("Home"),
              //     ),
              //     BottomNavigationBarItem(
              //       icon: Icon(
              //         IconHardorm.worldwide,
              //         // color: Colors.indigo,
              //       ),
              //       title: Text("Notification"),
              //     ),
              //     BottomNavigationBarItem(
              //       icon: Icon(
              //         IconHardorm.chat,
              //         // color: Colors.indigo,
              //       ),
              //       title: Text("Messages"),
              //     ),
              //     BottomNavigationBarItem(
              //       icon: Icon(
              //         IconHardorm.user,
              //         // color: Colors.indigo,
              //       ),
              //       title: Text("Profile"),
              //     ),
              //   ],
              // ),
            );
          }
        }
        

class RadioGroup1 extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Daily';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Radio(
              activeColor: Colors.white,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Daily';
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
                  radioButtonItem = 'Monthly';
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
        if (id == 1)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Acceptable electricity cost per unit',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              new Container(
                height: 40.0,
                padding: EdgeInsets.only(right: 20),
                child: TextField(
                  enabled: false,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        IconHardorm.electric,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0))),
                      fillColor: Colors.grey,
                      filled: true),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Text(
                  'Acceptable water cost per unit',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
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
                      enabled: false,
                      prefixIcon: Icon(
                        IconHardorm.water_drops,
                        size: 20.0,
                        color: Colors.black,
                      ),
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0))),
                      fillColor: Colors.grey,
                      filled: true),
                ),
              ),
            ],
          ),
        if (id == 2)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Acceptable electricity cost per unit',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
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
                        IconHardorm.electric,
                        size: 20.0,
                        color: Colors.black,
                      ),
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
              Container(
                child: Text(
                  'Acceptable water cost per unit',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
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
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(5.0))),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
            ],
          ),
      ],
    ));
  }
}
