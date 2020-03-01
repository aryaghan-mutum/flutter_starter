import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildAppBody(),
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('YS App'),
      backgroundColor: Colors.black87,
    );
  }

  Container buildAppBody() {
    return Container(
      child: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar buildBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black87,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.pinkAccent,
      currentIndex: _selectedIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          title: Text('A'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.business),
          title: Text('B'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.school),
          title: Text('C'),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.print),
          title: Text('D'),
        ),
      ],
      onTap: _onItemTapped,
    );
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Home',
      style: optionStyle,
    ),
    const Text(
      'Business',
      style: optionStyle,
    ),
    const Text(
      'School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
