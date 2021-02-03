import 'package:flutter/material.dart';
import 'package:HarDorm/icon_hardorm_icons.dart';


class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTabIndex = 0; 
  onTapped(int index){
    setState(() {
      currentTabIndex = index;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
