import 'package:flutter/material.dart';
import 'package:flutter_starter/ys2/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'My Application';


  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: HomePage(title: _title),
      ),
    );
  }
}
