import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/bottom_sheet/home_page.dart';

void main() => runApp(BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  final String _title = 'Bottom Sheet App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}
