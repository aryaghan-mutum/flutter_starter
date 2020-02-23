import 'package:flutter/material.dart';

class BottomNavBarRoute {
  Route<dynamic> generateRouteInBottomNavBar(RouteSettings settings) {
    switch (settings.name) {
      case "Introduction":
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.blue,
            child: Center(
              child: Text("Introduction"),
            ),
          ),
        );
      case "Guru Mantras":
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.green,
            child: Center(
              child: Text("Guru Mantras"),
            ),
          ),
        );
      case "More":
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.yellowAccent,
            child: Center(
              child: Text("More"),
            ),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.orangeAccent,
            child: Center(
              child: Text("Yoga Sutras"),
            ),
          ),
        );
    }
  }
}