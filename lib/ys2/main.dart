import 'package:flutter/material.dart';
import 'package:flutter_starter/ys2/contact_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String _title = 'My Application';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: MyAppStatefulWidget(),
      ),
    );
  }
}

class MyAppStatefulWidget extends StatefulWidget {
  MyAppStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() {
    return _MyStatefulWidgetState();
  }
}

class _MyStatefulWidgetState extends State<MyAppStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('YS App'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
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
      ContactPage();
    });
  }
}
