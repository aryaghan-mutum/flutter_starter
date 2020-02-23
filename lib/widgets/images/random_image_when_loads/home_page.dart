import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/images/random_image_when_loads/app_bar.dart';
import 'package:flutter_starter/widgets/images/random_image_when_loads/home_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  MyAppBar myAppBar = MyAppBar();
  HomeImage image = HomeImage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar.buildAppBar(),
        body: _buildAppBody(),
        bottomNavigationBar: _buildBottomNavBar());
  }

  Container _buildAppBody() {
    return Container(
      decoration: image.buildImage(),
      child: Center(
        child: _widgetOptions.elementAt(_selectedBottomNavMenuIndex),
      ),
    );
  }

  BottomNavigationBar _buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black87,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.pinkAccent,
      currentIndex: _selectedBottomNavMenuIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(EvaIcons.map),
          title: Text('Introduction'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(EvaIcons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(EvaIcons.moreHorizotnal),
          title: Text('More'),
        ),
      ],
      onTap: _onItemTapped,
    );
  }

  int _selectedBottomNavMenuIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Introduction',
      style: optionStyle,
    ),
    const Text(
      'Home',
      style: optionStyle,
    ),
    const Text(
      'More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int selectedBottomNavMenuIndex) {
    setState(() {
      _selectedBottomNavMenuIndex = selectedBottomNavMenuIndex;
      print(_selectedBottomNavMenuIndex);
    });
  }
}
