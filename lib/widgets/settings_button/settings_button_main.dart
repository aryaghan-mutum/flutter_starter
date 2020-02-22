import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/settings_button/HomePage.dart';

void main() => runApp(SettingsButton());

class SettingsButton extends StatelessWidget {
  final String _title = 'Settings Button App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}
