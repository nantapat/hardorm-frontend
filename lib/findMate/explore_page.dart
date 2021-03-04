import 'package:HarDorm/findMate/data/showRoommate.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

// const List item_for_choose = [
//   {
//   {"icon": "assets/components/close.png", "size": 45.0,
//   "icon_size": 20.0
//   },
//   },
//   {"icon": "assets/components/refresh.png", "size": 45.0,
//   // "icon_size": 20.0
//   },
//   {"icon": "assets/components/heart.png", "size": 45.0,
//   // "icon_size": 20.0
//   },
// ];

class _ExplorePageState extends State<ExplorePage> {
  List itemsTemp = [];
  int itemLength = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      itemsTemp = showRoomate;
      itemLength = showRoomate.length;
    });
  }

  List item_icons = [
    {"icon": "assets/components/close.png", "size": 70.0, "icon_size": 40.0},
    {"icon": "assets/components/refresh.png", "size": 70.0, "icon_size": 45.0},
    {"icon": "assets/components/heart.png", "size": 70.0, "icon_size": 40.0},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: getBody(),
      bottomSheet: getFooter(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 120),
      child: Container(
        height: size.height,
        child: TinderSwapCard(
          totalNum: itemLength,
          maxHeight: size.height * 0.8,
          maxWidth: size.width,
          minHeight: size.height * 0.6,
          minWidth: size.width * 0.8,
          cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 2),
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(itemsTemp[index]['img']),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.25),
                          Colors.black.withOpacity(0),
                        ],
                        end: Alignment.topCenter,
                        begin: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(children: [
                          Container(
                            width: size.width *0.8,
                            child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(left:15.0),
                                child: Row(
                                  children: [
                                    Text(
                                      itemsTemp[index]['name'],
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left:15.0,bottom: 15.0),
                                child: Row(
                                    children: List.generate(
                                        itemsTemp[index]['likes'].length,
                                        (indexLikes) {
                                          if(indexLikes == 0){
                                            return Padding(
                                              padding: const EdgeInsets.only(right:8.0),
                                              child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white.withOpacity(0.4),
                                        border: Border.all(
                                              color: Colors.white, width: 2)
                                              ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 3,
                                        top: 3,
                                      ),
                                      child: Text(
                                        itemsTemp[index]['likes'][indexLikes],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                            );
                                          }
                                          return Padding(
                                            padding: const EdgeInsets.only(right:8.0),
                                            child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.white.withOpacity(0.4),
                                        // border: Border.all(
                                        //       color: Colors.white, width: 2)
                                              ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 3,
                                        top: 3,
                                      ),
                                      child: Text(
                                        itemsTemp[index]['likes'][indexLikes],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                          );

                                  
                                })),
                              )
                            ]),
                          )
                        ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(item_icons.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: item_icons[index]['size'],
                height: item_icons[index]['size'],
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 10)
                    ]),
                child: Center(
                  child: Image.asset(
                    item_icons[index]['icon'],
                    width: item_icons[index]['icon_size'],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
