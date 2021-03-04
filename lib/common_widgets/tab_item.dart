import 'package:HarDorm/icon_hardorm_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabItem {home,findmate,message,profile}

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});
  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs ={
    TabItem.home: TabItemData(title: 'Home',icon: IconHardorm.home),
    TabItem.findmate: TabItemData(title: 'Roommate',icon: IconHardorm.search_people_symbol),
    TabItem.message: TabItemData(title: 'Message',icon: IconHardorm.chat),
    TabItem.profile: TabItemData(title: 'Profile',icon: IconHardorm.user),

  };
}