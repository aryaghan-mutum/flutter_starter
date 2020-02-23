import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/bottom_nav_bar/home_page.dart';

void main() => runApp(BottomNavBarApp());

class BottomNavBarApp extends StatelessWidget {
  final String _title = 'Bottom Navigation Bar App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: _title),
    );
  }
}
