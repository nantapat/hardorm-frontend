import 'package:HarDorm/findMate/explore_page.dart';
import 'package:HarDorm/findMate/like_page.dart';
import 'package:flutter/material.dart';


class OverviewMate extends StatefulWidget {
  @override
  _OverviewMateState createState() => _OverviewMateState();
}

class _OverviewMateState extends State<OverviewMate> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [ExplorePage(), LikeYou()],
    );
  }

  Widget getAppBar() {
    List bottomItems = [
      pageIndex == 0
          ?  "assets/components/friends_active.png"
          :  "assets/components/friends.png",
      pageIndex == 1
          ? "assets/components/heartLikeActive.png"
          : "assets/components/heartLike.png"
              
    ];
    return AppBar(
      // backgroundColor: Colors.white,
      elevation: 0,
      title:  Padding(
        padding: const EdgeInsets.only(right:10.0),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: List.generate(bottomItems.length, (index){
             return IconButton(
              alignment: Alignment.bottomRight,
              onPressed: () {
                setState(() {
                  pageIndex = index;
                });
              },
              icon: Image.asset(bottomItems[index]),
             );
           },
          ),
        ),
      ),
        );
  }
}