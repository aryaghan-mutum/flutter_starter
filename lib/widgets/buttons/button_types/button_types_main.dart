import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/buttons/button_types/home_page.dart';

void main() => runApp(BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  final String _title = 'All Button Types';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(title: _title),
    );
  }
}
