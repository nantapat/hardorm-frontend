
import 'package:HarDorm/common_widgets/rating_star.dart';
import 'package:HarDorm/common_widgets/room_left.dart';
import 'package:HarDorm/pages/MatchRoom.dart';
import 'package:HarDorm/pages/dailyPickDate.dart';
import 'package:HarDorm/pages/monthPick.dart';
import 'package:HarDorm/pages/showHorProvider.dart';
import 'package:HarDorm/pages/show_review.dart';
import 'package:flutter/material.dart';
import 'package:HarDorm/common_widgets/Slide_pic2.dart';
import 'package:HarDorm/common_widgets/expand_text.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:HarDorm/common_widgets/map.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

// class ShowHor extends StatefulWidget {
//   ShowHor({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _ShowHorState createState() => _ShowHorState();
// }

class ShowHor extends StatelessWidget {
  int currentTabIndex = 0;
  // double _rating;

  // onTapped(int index) {
  //   setState(() {
  //     currentTabIndex = index;
  //   });
  // }

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

  void _showReview(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => ShowReview()));
  }

  void _matchRoom(BuildContext context) {
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => MatchRoom()));
  }

  void _dailyRoom(BuildContext context) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => DailyPickDate(),
      ),
    );
  }

  void _monthRoom(BuildContext context) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => MonthPickerDate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>(
      create: (context) => AppProvider(),
      child:
          Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: new AppBar(
          backgroundColor: Colors.indigo,
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
              child: Expanded(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4.0,
                                                          right: 4.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        '4.3 Excellent',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 11.0),
                                                      ),
                                                      Text(
                                                        '50 reviews',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.indigo,
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
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4.0,
                                                          right: 4.0),
                                                  child: Text(
                                                    '85% would recommend',
                                                    style: TextStyle(
                                                        color: Colors.indigo,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
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
                                              child: Expanded(
                                                child: new Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
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
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 11.0),
                                                    ),
                                                    SizedBox(width: 5.0),
                                                    Expanded(
                                                      child: Container(
                                                        child: ButtonTheme(
                                                          height: 5,
                                                          minWidth: 5,
                                                          child: RaisedButton(
                                                            onPressed: () =>
                                                                _mapHarDorm(
                                                                    context),
                                                            color: Colors.white,
                                                            child: Expanded(
                                                              child: Text(
                                                                'View map',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            new Positioned(
                                              top: 50.0,
                                              left: 20.0,
                                              child: new Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    'Choose type of rental',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                      padding: EdgeInsets.only(
                                          left: 20.0, right: 20.0),
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
                                                    style: TextStyle(
                                                        fontSize: 13.0)),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Icon(
                                                  IconHardorm.air_conditioner,
                                                  size: 30.0,
                                                ),
                                                Text('Air conditioning',
                                                    style: TextStyle(
                                                        fontSize: 13.0)),
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
                                                  style:
                                                      TextStyle(fontSize: 13.0),
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
                                      padding: EdgeInsets.only(
                                          left: 20.0, right: 20.0),
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
                                                    style: TextStyle(
                                                        fontSize: 13.0)),
                                              ],
                                            ),
                                            Column(
                                              children: <Widget>[
                                                Icon(
                                                  IconHardorm.cleaning_tools,
                                                  size: 30.0,
                                                ),
                                                Text('Daily housekeeping',
                                                    style: TextStyle(
                                                        fontSize: 13.0)),
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
                                                  style:
                                                      TextStyle(fontSize: 13.0),
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
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
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
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    height: 400.0,
                                    // color: Colors.amber,
                                    child: GoogleMapHardorm(),
                                  ),
                                  SizedBox(height: 20.0),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20.0),
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
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
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
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      'Overall rating',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.0),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Expanded(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            child: Consumer<AppProvider>(
                                                builder:
                                                    (context, myModel, child) {
                                              return RatingBar.builder(
                                                initialRating: 1,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemSize: 50,
                                                unratedColor:
                                                    Colors.amber.withAlpha(50),
                                                itemPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 4.0),
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  Provider.of<AppProvider>(
                                                          context,
                                                          listen: false)
                                                      .userRateDorm(rating);
                                                },
                                              );
                                            }),
                                          ),
                                          SizedBox(width: 20.0),
                                          Container(
                                            child: Consumer<AppProvider>(
                                                builder:
                                                    (context, myModel, child) {
                                              return Text(
                                                myModel.userRating,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 15.0),
                                              );
                                            }),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey[200],
                                    child: Consumer<AppProvider>(
                                        builder: (context, myModel, child) {
                                      return RatingStar(
                                        barBackgroundColor: Color(0xFFFBEAFF),
                                        barTintColor: Color(0xFF9378FF),
                                        headerText: "Rating",
                                        headerTextColor: Colors.black,
                                        indexingColor: Colors.black,
                                        starFiveValue:
                                            myModel.percentagePerStar[8] +
                                                myModel.percentagePerStar[7],
                                        starFourValue:
                                            myModel.percentagePerStar[6] +
                                                myModel.percentagePerStar[5],
                                        starRating: myModel.starRatingAvg,
                                        starRatingTextColor: Colors.black,
                                        starThreeValue:
                                            myModel.percentagePerStar[4] +
                                                myModel.percentagePerStar[3],
                                        startOneValue:
                                            myModel.percentagePerStar[0],
                                        starTwoValue:
                                            myModel.percentagePerStar[2] +
                                                myModel.percentagePerStar[1],
                                      );
                                    }),
                                  ),
                                  SizedBox(height: 20.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Reviews',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.0),
                                        ),
                                        Container(
                                          child: ButtonTheme(
                                            height: 20,
                                            minWidth: 8,
                                            child: RaisedButton(
                                              onPressed: () =>
                                                  _showReview(context),
                                              color: Colors.indigo,
                                              child: Text(
                                                'View all',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 10.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Text('Top Reviews',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                      )),
                                  Container(
                                    // height: 600.0,
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(20.0),
                                    child: Card(
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Column(
                                                  children: [
                                                    SizedBox(height: 20.0),
                                                    CircleAvatar(
                                                      backgroundImage: AssetImage(
                                                          "assets/Avatar/chun1.jpg"),
                                                      radius: 40.0,
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      'Chun Chingchew',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12.0),
                                                    ),
                                                    SizedBox(height: 20.0),
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 20),
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: RotatedBox(
                                                          quarterTurns: 2,
                                                          child: Icon(
                                                            IconHardorm
                                                                .double_quotes,
                                                            size: 18.0,
                                                            color:
                                                                Colors.indigo,
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 0.0,
                                                              left: 20.0,
                                                              right: 20.0),
                                                      child: Container(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(4.0),
                                                          child: Text(
                                                            "I dont know what to say but this dormitory is very good and I love my room so much ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                            textAlign:
                                                                TextAlign.left,
                                                            maxLines: 4,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 20),
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Icon(
                                                          IconHardorm
                                                              .double_quotes,
                                                          size: 18.0,
                                                          color: Colors.indigo,
                                                        )),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20.0,
                                                              right: 20.0,
                                                              top: 10.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: <Widget>[
                                                          Icon(
                                                            IconHardorm.like,
                                                            color:
                                                                Colors.indigo,
                                                            size: 15.0,
                                                          ),
                                                          SizedBox(width: 10.0),
                                                          Text(
                                                            '384 likes',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12.0),
                                                          ),
                                                          SizedBox(width: 10.0),
                                                          RotatedBox(
                                                            quarterTurns: 2,
                                                            child: Icon(
                                                              IconHardorm.like,
                                                              size: 15.0,
                                                              color:
                                                                  Colors.indigo,
                                                            ),
                                                          ),
                                                          SizedBox(width: 10.0),
                                                          Text(
                                                            '18 don\'t like this',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 12.0),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20.0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Expanded(
                                                  child: RaisedButton(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 21.0,
                                                        horizontal: 15.0),
                                                    onPressed: () => {},
                                                    // onPressed: () => _submit(context),
                                                    color: Colors.white,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          IconHardorm.like__1_,
                                                          color: Colors.indigo,
                                                          size: 20.0,
                                                        ),
                                                        SizedBox(width: 15.0),
                                                        Expanded(
                                                          child: Text(
                                                            'you like this',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(5.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 2,
                                                  child: FittedBox(
                                                    child: Image.asset(
                                                        'assets/components/Line.png'),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: RaisedButton(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 13.0,
                                                        horizontal: 20.0),
                                                    onPressed: () => {},
                                                    // onPressed: () => _submit(context),
                                                    color: Colors.white,
                                                    child: Row(
                                                      children: <Widget>[
                                                        RotatedBox(
                                                          quarterTurns: 2,
                                                          child: Icon(
                                                            IconHardorm
                                                                .like__1_,
                                                            size: 18.0,
                                                            color:
                                                                Colors.indigo,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.0,
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            'you don\'t like this',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 13.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8.0),
                                                      ),
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
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //       left: 20.0, right: 20.0),
                                  //   child: Expanded(
                                  //     child: Row(
                                  //       mainAxisAlignment:
                                  //           MainAxisAlignment.spaceBetween,
                                  //       children: <Widget>[
                                  //         Text(
                                  //           'Compare dorms and find roommate',
                                  //           style: TextStyle(
                                  //               color: Colors.black,
                                  //               fontWeight: FontWeight.w600,
                                  //               fontSize: 13.0),
                                  //         ),
                                  //         SizedBox(width: 8.0),
                                  //         Expanded(
                                  //           child: Container(
                                  //             child: ButtonTheme(
                                  //               height: 20,
                                  //               minWidth: 4,
                                  //               child: RaisedButton(
                                  //                 onPressed: () =>
                                  //                     _matchRoom(context),
                                  //                 color: Colors.indigo,
                                  //                 child: Expanded(
                                  //                   child: Text(
                                  //                     'Start',
                                  //                     style: TextStyle(
                                  //                       fontWeight:
                                  //                           FontWeight.bold,
                                  //                       color: Colors.white,
                                  //                       fontSize: 13.0,
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  // ),
                                  SizedBox(height: 20.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      'Reserve a room',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  SizedBox(height: 40.0),
                                  Roomleft(),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: EdgeInsets.all(20.0),
                                    child: Card(
                                      color: Colors.white,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: 20.0, top: 20.0, right: 20.0),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Text(
                                              'Choose the type of rental',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: <Widget>[
                                                RaisedButton(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      // vertical: 13.0,
                                                      horizontal: 30.0),
                                                  onPressed: () =>
                                                      _dailyRoom(context),
                                                  // onPressed: () => _submit(context),
                                                  color: Colors.indigo,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Text(
                                                        'Daily Room',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: Colors.white,
                                                          fontSize: 13.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(5.0),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 20.0),
                                                Expanded(
                                                  child: RaisedButton(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        // vertical: 13.0,
                                                        horizontal: 20.0),
                                                    onPressed: () =>
                                                        _monthRoom(context),
                                                    // onPressed: () => _submit(context),
                                                    color: Colors.indigo,
                                                    child: Row(
                                                      children: <Widget>[
                                                        Expanded(
                                                          child: Text(
                                                            'Monthly Room',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 13.0,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                // RadioGroup2(),
                                              ],
                                            ),
                                            SizedBox(height: 20),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      'Write a reviews ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      'Recommend your friend',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        RaisedButton(
                                          // padding: const EdgeInsets.symmetric(
                                          //     vertical: 13.0, horizontal: 20.0),
                                          onPressed: () => {},
                                          // onPressed: () => _submit(context),
                                          color: Colors.indigo,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                IconHardorm.like__1_,
                                                color: Colors.white,
                                                size: 20.0,
                                              ),
                                              SizedBox(width: 15.0),
                                              Text(
                                                'Recommend',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white,
                                                  fontSize: 13.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5.0),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Expanded(
                                          child: RaisedButton(
                                            // padding: const EdgeInsets.symmetric(
                                            //     vertical: 13.0, horizontal: 20.0),
                                            onPressed: () => {},
                                            // onPressed: () => _submit(context),
                                            color: Colors.indigo,
                                            child: Row(
                                              children: <Widget>[
                                                RotatedBox(
                                                  quarterTurns: 2,
                                                  child: Icon(
                                                    IconHardorm.like__1_,
                                                    size: 20.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15.0,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Not recommend',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color: Colors.white,
                                                      fontSize: 13.0,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(8.0),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      // ),
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
            style: new TextStyle(fontSize: 12.0, color: Colors.white),
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
            style: new TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
