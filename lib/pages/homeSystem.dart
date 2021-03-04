import 'package:HarDorm/common_widgets/cupertino_home_scaffold.dart';
import 'package:HarDorm/common_widgets/tab_item.dart';
import 'package:HarDorm/pages/MatchRoom.dart';
import 'package:HarDorm/pages/profile.dart';
import 'package:HarDorm/pages/scan_dorm.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class HomeSystem extends StatefulWidget {
  @override
  _HomeSystemState createState() => _HomeSystemState();
}

class _HomeSystemState extends State<HomeSystem> {
  TabItem _currentTab = TabItem.home;
  final Map<TabItem, GlobalKey<NavigatorState>> navigatorKeys ={
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.findmate: GlobalKey<NavigatorState>(),
    TabItem.message: GlobalKey<NavigatorState>(),
    TabItem.profile: GlobalKey<NavigatorState>(),

  };
  Map<TabItem,WidgetBuilder> get widgetBuilders{
    return {
      TabItem.home: (_) => SelectDorm(),
      TabItem.findmate: (_) => MatchRoom(),
      TabItem.message:(_) => Container(),
      TabItem.profile:(_) => Profile(),

    };

  }

   void _select(TabItem tabItem) {
     if (tabItem == _currentTab) {
       //pop to first route
       navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
     }else{
     setState(() => _currentTab = tabItem);
   }
   }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     onWillPop: () async => !await navigatorKeys[_currentTab].currentState.maybePop(),
          child: CupertinoHomeScaffold(
        currentTab: _currentTab,
        onSelectTab: _select,
        widgetBuilders: widgetBuilders,
        navigatorKeys: navigatorKeys,
      ),
    );
  }
}