import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:flutter/material.dart';

class ShowReview extends StatefulWidget {
  @override
  _ShowReviewState createState() => _ShowReviewState();
}

class _ShowReviewState extends State<ShowReview> {
  int currentTabIndex = 0;
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  var pic = [
    "assets/Avatar/linglingqi.jpg",
    "assets/Avatar/changge.jpg",
    "assets/Avatar/zhoufang.jpg",
    "assets/Avatar/liaruge.jpg",
    "assets/Avatar/john.jpg",
    "assets/Avatar/ten.jpg",
    "assets/Avatar/battle.jpg",
    "assets/Avatar/jim.jpg",
    "assets/Avatar/paul.jpg",
    "assets/Avatar/tommy.jpg",
  ];

  List name = [
    "Lingling Qi",
    "Changge Li",
    "Zhoufang Fang",
    "Lia Ruge",
    "John Wick",
    "Ten Silver",
    "Battle Jingo",
    "Jim Berry",
    "Paul Maker",
    "Tommy Hollywood",
  ];
  var comment = [
    "This dormitory is already renovated and looks new. The room was perfect, clean, comfortable. I absolutely recommend this hotel!",
    "First impression clean ,good fast service and a very good room",
    "Very nice dormitory, the wifi took a bit of work to get running at the start of my stay.",
    "The room smelt of vomit, after looking under the bed there was a huge pile which hadn’t been cleaned up properly.",
    "Room very noisy constant knocking noise,Room was extremely tiny, not as shown on picture upon booking",
    "The dormitory was well-situated, good value, clean and well-equipped and the staff were helpful. ",
    "I didn't sleep as well as I might have, were too many little light sources in the room when the main lights are out, so it wasn't dark enough for me",
    "The pillows weren't comfortable. The room was also a bit smaller than I expected but that didn't cause me any inconvenience.",
    "My room was very comfortable and had plenty of space.",
    "I got a nice quiet room on the forth floor,5 minutes walk from my university, I love this dormitory",
  ];
  var like = [
    "145 likes",
    "120 likes",
    "103 likes",
    "80 likes",
    "95 likes",
    "100 likes",
    "75 likes",
    "100 likes",
    "50 likes",
    "123 likes",
  ];

  var dontlike = [
    "16 don\'t like",
    "23 don\'t like",
    "25 don\'t like",
    "50 don\'t like",
    "15 don\'t like",
    "20 don\'t like",
    "28 don\'t like",
    "14 don\'t like",
    "30 don\'t like",
    "21 don\'t like",
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
      ),
      body: ListView.builder(
        itemCount: pic.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) => Container(
          
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20.0),
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
                      Column(
                        children: [
                          SizedBox(height: 20.0),
                          CircleAvatar(
                            backgroundImage: AssetImage(pic[index]),
                            radius: 40.0,
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            name[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            alignment: Alignment.bottomLeft,
                            child: RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  IconHardorm.double_quotes,
                                  size: 18.0,
                                  color: Colors.indigo,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 0.0, left: 20.0, right: 20.0),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  comment[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                  maxLines: 4,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(right: 20),
                              alignment: Alignment.bottomRight,
                              child: Icon(
                                IconHardorm.double_quotes,
                                size: 18.0,
                                color: Colors.indigo,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  IconHardorm.like,
                                  color: Colors.indigo,
                                  size: 15.0,
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  like[index] ,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0),
                                ),
                                SizedBox(width: 10.0),
                                RotatedBox(
                                  quarterTurns: 2,
                                  child: Icon(
                                    IconHardorm.like,
                                    size: 15.0,
                                    color: Colors.indigo,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  dontlike[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                                                FontWeight.w800,
                                                            color: Colors.black,
                                                            fontSize: 13.0,
                                                          ),
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
                                              ),
                                              Container(
                                                height: 50.0,
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
                                                          IconHardorm.like__1_,
                                                          size: 18.0,
                                                          color: Colors.indigo,
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
                                                                FontWeight.w800,
                                                            color: Colors.black,
                                                            fontSize: 13.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(8.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              
                      // RaisedButton(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 21.0,
                         
                      //     horizontal: 15.0),
                      //   onPressed: () => {},
                      //   // onPressed: () => _submit(context),
                      //   color: Colors.white,
                      //   child: Row(
                      //     children: <Widget>[
                      //       Icon(
                      //         IconHardorm.like__1_,
                      //         color: Colors.indigo,
                      //         size: 20.0,
                      //       ),
                      //       SizedBox(width: 15.0),
                      //       Text(
                      //         'you like this',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.w800,
                      //           color: Colors.black,
                      //           fontSize: 13.0,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.all(
                      //       Radius.circular(5.0),
                      //     ),
                      //   ),
                      // ),
                      // Container(
                      //   height: 50.0,
                      //   child: FittedBox(
                      //     child: Image.asset('assets/components/Line.png'),
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                      // Expanded(
                      //                         child: RaisedButton(
                      //     padding: const EdgeInsets.symmetric(
                      //         vertical: 13.0,
                      //         horizontal: 20.0),
                      //     onPressed: () => {},
                      //     // onPressed: () => _submit(context),
                      //     color: Colors.white,
                      //     child: Row(
                      //       children: <Widget>[
                      //         RotatedBox(
                      //           quarterTurns: 2,
                      //           child: Icon(
                      //             IconHardorm.like__1_,
                      //             size: 20.0,
                      //             color: Colors.indigo,
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 15.0,
                      //         ),
                      //         Expanded(
                      //                                       child: Text(
                      //             'you don\'t like this',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w800,
                      //               color: Colors.black,
                      //               fontSize: 13.0,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.all(
                      //         Radius.circular(8.0),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
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
