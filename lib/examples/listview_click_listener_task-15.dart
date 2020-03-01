import 'package:flutter/material.dart';

class ListViewClickListener extends StatefulWidget {
  _ListViewClickListenerState createState() => _ListViewClickListenerState();
}

class _ListViewClickListenerState extends State<ListViewClickListener> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Click Listener ListView Example'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: _listViewData
            .map((data) => ListTile(
          leading: Icon(Icons.person),
          title: Text(data),
          onTap: () => _scaffoldKey.currentState.showSnackBar(SnackBar(
            content: Text("$data Clicked!"),
            duration: Duration(seconds: 1),
          )),
        ))
            .toList(),
      ),
    );
  }
}