import 'package:flutter/material.dart';
import 'package:hardorm/my_flutter_app_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List nameHor = [
    "Teddy@Thammasat",
    "Bear@Thammasat",
    "Brown@Thammasat",
    "Cony@Thammasat",
    "Pony@Thammasat",
  ];
  var describe = [
    "฿3,000-5,000",
    "฿4,000-5,000",
    "฿2,000-3,000",
    "฿3,000-5,000",
    "฿3,000-5,000",
  ];

  var imageList = [
    "picHor/Hor1.jpg",
    "picHor/Hor2.jpg",
    "picHor/Hor3.jpg",
    "picHor/Hor4.jpg",
    "picHor/Hor5.jpg",
  ];
  // List hor = ["picHor/Hor1.jpg",];

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
      body: ListView.builder(
        itemCount: imageList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(25.0),
          child: Card(
            elevation: 3.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
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
                          child: Image.asset(imageList[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              nameHor[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0),
                            ),
                            Container(
                              // padding: EdgeInsets.only(left:10.0,bottom: 30.0),
                              child: Text(
                                describe[index],
                                 style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              nameHor[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0),
                            ),
                            Container(
                              // padding: EdgeInsets.only(left:10.0,bottom: 30.0),
                              child: Text(
                                describe[index],
                                 style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0),
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
              IconHardorm.booking,
              // color: Colors.indigo,
            ),
            title: Text("Bookings"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.search_people,
              // color: Colors.indigo,
            ),
            title: Text("Roommate"),
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
