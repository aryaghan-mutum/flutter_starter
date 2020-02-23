import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/images/random_image_when_clicked/home_page.dart';

void main() => runApp(RandomImageWhenClickedApp());

class RandomImageWhenClickedApp extends StatelessWidget {

  final String _title = 'Random Image When Clicked App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}

