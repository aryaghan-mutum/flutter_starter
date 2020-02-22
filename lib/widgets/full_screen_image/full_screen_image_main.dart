import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/full_screen_image/home_page.dart';

void main() => runApp(YogaSutraApp());

class YogaSutraApp extends StatelessWidget {
  final String _title = 'Yoga Sutra Application';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        home: HomePage(),
      ),
    );
  }
}

