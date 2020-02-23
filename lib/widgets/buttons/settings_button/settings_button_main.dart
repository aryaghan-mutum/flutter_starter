import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/buttons/settings_button/home_page.dart';

void main() => runApp(SettingsButtonApp());

class SettingsButtonApp extends StatelessWidget {
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
