import 'package:flutter/material.dart';
import 'popup_menu_button_constants.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildAppBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(widget.title),
      centerTitle: true,
      actions: <Widget>[buildPopupMenuBtn()],
    );
  }

  PopupMenuButton buildPopupMenuBtn() {
    return PopupMenuButton<String>(
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.settings) {
      print('Seetings');
    }
    if (choice == Constants.subscribe) {
      print('Subscribe');
    }
    if (choice == Constants.signout) {
      print('Signout');
    }
  }

  Center buildAppBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}