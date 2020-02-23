import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/images/random_image_when_loads//home_page.dart';
void main() => runApp((RandomImageWhenLoadsApp()));

class RandomImageWhenLoadsApp extends StatelessWidget {
  final String _title = 'Random Image When Loads App';

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
