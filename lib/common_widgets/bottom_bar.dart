import 'package:flutter/material.dart';
import 'package:hardorm/my_flutter_app_icons.dart';

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
            icon: Icon(IconHardorm.home,
              color: Colors.indigo),
            title: Text("Home"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.booking,
              color: Colors.indigo,
            ),
            title: Text("Bookings"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.search_people,
              color: Colors.indigo,
            ),
            title: Text("Roommate"),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconHardorm.user,
              color: Colors.indigo,
            ),
            title: Text("Profile"),
            
          ),
        ],
      ),
    );
  }
}
