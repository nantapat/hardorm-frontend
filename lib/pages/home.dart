import 'package:flutter/material.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:HarDorm/pages/showHor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List nameHor = [
    "Teddy@Thammasat",
    "Bear@Thammasat",
    "Brown@Thammasat",
    "Cony@Thammasat",
    "Pony@Thammasat",
  ];
  var pricePerday = [
    "฿500-700/day",
    "฿550-750/day",
    "฿850-1500/day",
    "฿450-680/day",
    "฿650-999/day",
  ];

  var pricePermonth = [
    "฿3,250-5,000/month",
    "฿4,500-5,000/month",
    "฿3,500-5,000/month",
    "฿2,700-5,000/month",
    "฿3,500-5,000/month",
  ];

  var rank = [
    "Excellent",
    "Good",
    "Excellent",
    "Very Good",
    "Excellent",
  ];

  var reviews = [
    "50 verifield reviews",
    "102 verifield reviews",
    "150 verifield reviews",
    "50 verifield reviews",
    "96 verifield reviews",
  ];

  var location = [
    "Khlong luang",
    "Pathum thani",
    "Chiang rak 1",
    "Chiang rak 2",
    "Khlong luang",
  ];

  var rate = ["4.3", "3.8", "4.5", "3.6", "4.2"];

  var imageList = [
    "picHor/Hor1.jpg",
    "picHor/Hor2.jpg",
    "picHor/Hor3.jpg",
    "picHor/Hor4.jpg",
    "picHor/Hor5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
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
      body: ListView.builder(
        itemCount: imageList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ShowHor()));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(25.0),
            child: Expanded(
              child: Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
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
                              child: Image.asset(imageList[index]),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  nameHor[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16.0),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          IconHardorm.pin,
                                          size: 15.0,
                                        ),
                                        SizedBox(width: 2.0),
                                        Text(
                                          location[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      pricePerday[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  IconHardorm.review,
                                  size: 25.0,
                                ),
                                Text(
                                  rate[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        rank[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8.0),
                                      ),
                                      Text(
                                        reviews[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8.0),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0.0),
                                  child: Expanded(
                                    child: Text(
                                      pricePermonth[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0),
                                    ),
                                  ),
                                ),
                              ],
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
    );
  }
}
