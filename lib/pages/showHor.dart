import 'package:HarDorm/common_widgets/rating_star.dart';
import 'package:flutter/material.dart';
import 'package:HarDorm/common_widgets/Slide_pic2.dart';
import 'package:HarDorm/common_widgets/expand_text.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:HarDorm/common_widgets/map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShowHor extends StatefulWidget {
  ShowHor({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ShowHorState createState() => _ShowHorState();
}

class _ShowHorState extends State<ShowHor> {
  int currentTabIndex = 0;
  double _rating;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List typeHor = [
    "Standard",
    "Deluxe",
  ];
  List pricePerDay = [
    "550-650/day",
    "680-780/day",
  ];

  void _mapHarDorm(BuildContext context) {
    Navigator.push(context,
        new MaterialPageRoute(builder: (context) => GoogleMapHardorm()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        centerTitle: true,
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Container(
              width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 150.0,
                        child: FittedBox(
                          child: Image.asset('picHor/Hor1.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          'Teddy@Thammasat',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: SafeArea(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              SafeArea(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              IconHardorm.review,
                                              size: 35.0,
                                              color: Colors.indigo,
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0, right: 4.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '4.3 Excellent',
                                                    style: TextStyle(
                                                        color: Colors.indigo,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 11.0),
                                                  ),
                                                  Text(
                                                    '50 reviews',
                                                    style: TextStyle(
                                                        color: Colors.indigo,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 11.0),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        color: Colors.white,
                                        height: 100.0,
                                        width: 150.0,
                                      ),
                                      SizedBox(width: 15.0),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              IconHardorm.like,
                                              size: 35.0,
                                              color: Colors.indigo,
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0, right: 4.0),
                                              child: Text(
                                                '85% would recommend',
                                                style: TextStyle(
                                                    color: Colors.indigo,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                        color: Colors.white,
                                        height: 100.0,
                                        width: 150.0,
                                      ),
                                    ]),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                height: 180.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF334D92),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: new Stack(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20.0,
                                            right: 20.0,
                                            //
                                          ),
                                          child: new Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                IconHardorm.route,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              SizedBox(width: 5.0),
                                              Text(
                                                'Distance   0.34 km',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                              // SizedBox(width: 5.0),
                                              Icon(
                                                IconHardorm.pin,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              // SizedBox(width: 5.0),
                                              Text(
                                                'Khlong luang',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                              SizedBox(width: 5.0),
                                              Container(
                                                child: ButtonTheme(
                                                  height: 5,
                                                  minWidth: 5,
                                                  child: RaisedButton(
                                                    onPressed: () =>
                                                        _mapHarDorm(context),
                                                    color: Colors.white,
                                                    child: Text(
                                                      'View map',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        color: Colors.black,
                                                        fontSize: 10.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        new Positioned(
                                          top: 50.0,
                                          left: 20.0,
                                          child: new Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                IconHardorm.electric,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              SizedBox(width: 5.0),
                                              Text(
                                                'Electricity cost per unit: 7 Baht/Unit',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        new Positioned(
                                          top: 86.0,
                                          left: 20.0,
                                          child: new Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Icon(
                                                IconHardorm.water_drops,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              SizedBox(width: 5.0),
                                              Text(
                                                'Water cost per unit: 7 Baht/Unit',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        new Positioned(
                                          top: 115.0,
                                          left: 20.0,
                                          child: new Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                'Choose type of rental',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 11.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        new Positioned(
                                          top: 120.0,
                                          left: 3.0,
                                          child: RadioGroup2(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0, top: 20.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Standard',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      '฿550-650/day',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              SlideRooms(),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0, top: 20.0, right: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Deluxe',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                    Text(
                                      '฿680-650/day',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.0),
                              SlideRooms(),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0, top: 20.0, right: 20.0),
                                child: Text(
                                  'Facilities',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              SafeArea(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.swimmer,
                                              size: 30.0,
                                            ),
                                            Text('Swimming pool',
                                                style:
                                                    TextStyle(fontSize: 13.0)),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.air_conditioner,
                                              size: 30.0,
                                            ),
                                            Text('Air conditioning',
                                                style:
                                                    TextStyle(fontSize: 13.0)),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.dumbbell,
                                              size: 30.0,
                                            ),
                                            Text(
                                              'Fitness centre',
                                              style: TextStyle(fontSize: 13.0),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 60.0),
                              SafeArea(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.elevator,
                                              size: 30.0,
                                            ),
                                            Text('Elevator',
                                                style:
                                                    TextStyle(fontSize: 13.0)),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.cleaning_tools,
                                              size: 30.0,
                                            ),
                                            Text('Daily housekeeping',
                                                style:
                                                    TextStyle(fontSize: 13.0)),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              IconHardorm.shower,
                                              size: 30.0,
                                            ),
                                            Text(
                                              'Shower',
                                              style: TextStyle(fontSize: 13.0),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20.0, top: 20.0, right: 20.0),
                                child: Text(
                                  'Description',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              ExpandText(),
                              SizedBox(height: 20.0),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  'Map',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                height: 400.0,
                                // color: Colors.amber,
                                child: GoogleMapHardorm(),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20.0),
                                child: RaisedButton(
                                  padding: const EdgeInsets.all(13.0),
                                  onPressed: () => _mapHarDorm(context),
                                  color: Colors.indigo,
                                  child: Text(
                                    'Go To See Full Map!',
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
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  'Reviews and rating',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Text(
                                  'Overall rating',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ),
                              Row(children: <Widget>[
                                RatingBar.builder(
                                  initialRating: 1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 50,
                                  unratedColor: Colors.amber.withAlpha(50),
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                    setState(() {
                                      _rating = rating;
                                    });
                                  },
                                ),
                                SizedBox(height: 40.0),
                                if (_rating != null)
                                  Text(
                                    'Rating : $_rating',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 15.0),
                                  ),
                              ]),
                              Container(
                                color: Colors.grey[200],
                                child: RatingStar(
                                  barBackgroundColor: Color(0xFFFBEAFF),
                                  barTintColor: Color(0xFF9378FF),
                                  headerText: "Rating",
                                  headerTextColor: Colors.black,
                                  indexingColor: Colors.black,
                                  starFiveValue: 30,
                                  starFourValue: 60,
                                  starRating: "5.0",
                                  starRatingTextColor: Colors.black,
                                  starThreeValue: 90,
                                  startOneValue: 10,
                                  starTwoValue: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[300],
        onTap: onTapped,
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.home,
              // color: Colors.blue
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.worldwide,
              // color: Colors.indigo,
            ),
            title: Text("Notification"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.chat,
              // color: Colors.indigo,
            ),
            title: Text("Messages"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.user,
              // color: Colors.indigo,
            ),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}

class RadioGroup2 extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Daily';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            style: new TextStyle(fontSize: 11.0, color: Colors.white),
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
            style: new TextStyle(fontSize: 11.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
