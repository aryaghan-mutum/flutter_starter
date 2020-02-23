import 'package:flutter/material.dart';
import 'app_body.dart';
import 'popup_button_menu.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppBody appBody = AppBody();
  PopupButtonMenu popupMenuButton = PopupButtonMenu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: appBody.buildAppBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(widget.title),
      centerTitle: true,
      actions: <Widget>[popupMenuButton.buildPopupMenuBtn()],
    );
  }
}
