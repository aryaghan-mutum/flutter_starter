import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/text_form_field/HomePage.dart';

void main() => runApp(TextFormFieldApp());

class TextFormFieldApp extends StatelessWidget {
  final String _title = 'Text Form App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}
