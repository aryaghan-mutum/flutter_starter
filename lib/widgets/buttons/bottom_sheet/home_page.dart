import 'package:flutter/material.dart';
import 'bottom_sheet.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BottomModal bottomModal = BottomModal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: buildAppBar(),
      body: buildAppBody(),
      floatingActionButton: buildFloatingActionBtn(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey);
  }

  Center buildAppBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  FloatingActionButton buildFloatingActionBtn() {
    return FloatingActionButton(
      child: Icon(Icons.add),
      foregroundColor: Colors.amber,
      onPressed: () => bottomModal.bottomSheet(context),
    );
  }
}
