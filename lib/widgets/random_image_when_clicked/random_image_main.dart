import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/random_image_when_clicked/home_page.dart';

void main() => runApp(RandomImg());

class RandomImg extends StatelessWidget {

  final String _title = 'Random Images App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}

