import 'package:HarDorm/findMate/overviewMate.dart';
import 'package:flutter/material.dart';

class MatchRoom extends StatefulWidget {
  @override
  _MatchRoomState createState() => _MatchRoomState();
}

void _compareRoommate(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      // fullscreenDialog: true,
      builder: (context) => OverviewMate(),
    ),
  );
}

class _MatchRoomState extends State<MatchRoom> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: Text(
          'HarDorm',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 30, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Destination',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                height: 45,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.white,
                      filled: true),
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                'Choose 3 dorm to find roommates who are also interested',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                padding: const EdgeInsets.symmetric(
                    vertical: 13.0, horizontal: 20.0),
                onPressed: () => {},
                color: Colors.white,
                child: Text(
                  'Add the dorm name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
                shape: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // boxShadow: [BoxShadow(blurRadius: 10,color: Colors.white,offset: Offset(1,3))]// make rounded corner of border
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 45, right: 45.0, top: 50.0, bottom: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RaisedButton(
                      padding: const EdgeInsets.all(10.0),
                      onPressed: () => _compareRoommate(context),
                      // onPressed: () => _bottombar(context),
                      // onPressed: () {},

                      color: Colors.indigo,
                      child: Text(
                        'Save and continue',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
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
    );
  }
}
