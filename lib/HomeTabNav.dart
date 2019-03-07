import 'package:flutter/material.dart';
import 'Home.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String cinList = '/cinList';
}

class HomeTabNavigator extends StatefulWidget {
  // HomeTabNavigator({this.navigatorKey,this.tabItem});
  // final GlobalKey<NavigatorState> navigatorKey;
  // final TabItem tabItem;
  _HomeTabNavigatorState createState() => _HomeTabNavigatorState();
}

class _HomeTabNavigatorState extends State<HomeTabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routesettings){
         return MaterialPageRoute(builder: (context) => new HomeWidget(),);
    
  }
  );
}
}