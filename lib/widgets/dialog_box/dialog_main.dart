import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/dialog_box/HomePage.dart';

void main() => runApp(DialogApp());

class DialogApp extends StatelessWidget {
  final String _title = 'Dialog Box App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}
