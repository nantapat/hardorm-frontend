import 'package:HarDorm/findMate/data/likeYou.dart';
import 'package:flutter/material.dart';

class LikeYou extends StatefulWidget {
  @override
  _LikeYouState createState() => _LikeYouState();
}

class _LikeYouState extends State<LikeYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.only(bottom: 90),
      children: [
        SizedBox(height: 10),
        Text(
          "Matched User",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Divider(
          thickness: 0.8,
        ),
        Wrap(
            children: List.generate(like_you.length, (index) {
          return Container(
            width: (size.width - 15) / 2,
            height: 250,
            child: Stack(
              children: [
                Container(
                  width: (size.width - 15) / 2,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(like_you[index]['img']),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: (size.width - 15) / 2,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(like_you[index]['img']),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: (size.width - 15) / 2,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.25),
                            Colors.black.withOpacity(0),
                          ],
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        like_you[index]['active']
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Recently Active",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Offline",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ]),
                ),
              ],
            ),
          );
        }))
      ],
    );
  }
}
