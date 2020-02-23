import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/bottom_nav_bar/components/app_bar.dart';
import 'package:flutter_starter/widgets/bottom_nav_bar/components/home_image.dart';
import 'package:flutter_starter/widgets/bottom_nav_bar/components/bottom_nav_bar_route.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  YSAppBar ysAppBar = YSAppBar();
  HomeImage image = HomeImage();
  BottomNavBarRoute bottomNavBarRoute = BottomNavBarRoute();

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _selectedBottomNavMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ysAppBar.buildAppBar(),
        body: _buildAppBody(),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  Container _buildAppBody() {
    return Container(
      //decoration: image.buildImage(),
      child: Center(
        child: Navigator(
            key: _navigatorKey,
            onGenerateRoute: bottomNavBarRoute.generateRouteInBottomNavBar),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.map),
          title: Text("Introduction"),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.eyeOff2Outline),
          title: Text("Guru Mantras"),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.bookOpen),
          title: Text("Yoga Sutras"),
        ),
        BottomNavigationBarItem(
          icon: Icon(EvaIcons.moreHorizotnal),
          title: Text("More"),
        )
      ],
      onTap: _onItemTapped,
      currentIndex: _selectedBottomNavMenuIndex,
    );
  }

  _onItemTapped(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState.pushReplacementNamed("Introduction");
        break;
      case 1:
        _navigatorKey.currentState.pushReplacementNamed("Guru Mantras");
        break;
      case 2:
        _navigatorKey.currentState.pushReplacementNamed("Yoga Sutras");
        break;
      case 3:
        _navigatorKey.currentState.pushReplacementNamed("More");
        break;
    }
    setState(() => _selectedBottomNavMenuIndex = tabIndex);
  }
}
