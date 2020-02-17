import 'package:flutter/material.dart';
import 'app_bar.dart';
import 'app_body.dart';
import 'floating_action.dart';
import 'rows.dart';
import 'columns.dart';
import 'padding.dart';
import 'container.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      // body: appBody(),
      // body: getContainer(),
      // body: buildPadding(),
      // body: buildRows(),
      body: buildRows2(),
      // body: buildColumns(),
      floatingActionButton: floatingAction(),
    );
  }
}
