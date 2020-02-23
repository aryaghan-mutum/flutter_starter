import 'package:flutter/material.dart';
import 'floating_action_button.dart';
import 'app_body.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBody appBody = AppBody();
  FloatingAction bottomSheet = FloatingAction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: buildAppBar(),
      body: appBody.buildAppBody(),
      floatingActionButton: bottomSheet.buildFloatingActionBtn(context),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey);
  }
}
