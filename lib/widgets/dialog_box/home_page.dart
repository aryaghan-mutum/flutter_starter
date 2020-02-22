import 'dialogs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dialogs dialogs = Dialogs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: buildAppBar(),
      body: buildAppBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Column buildAppBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildInformationDialog(),
        buildWaitingDialog(),
        buildConfirmDialog(),
      ],
    );
  }

  Row buildInformationDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.yellowAccent,
          onPressed: () => dialogs.information(context,
              'Informatin Dialog Title', 'This is Infromation Dialog box'),
          child: Text('Informarion dialog'),
        )
      ],
    );
  }

  Row buildWaitingDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.greenAccent,
          onPressed: () async {
            dialogs.waiting(
                context, 'Waiting Dialog Title', 'This is Waiting Dialog box');
            await Future.delayed(Duration(seconds: 2));
            Navigator.pop(context);
          },
          child: Text('Waiting dialog'),
        )
      ],
    );
  }

  Row buildConfirmDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.lightBlue,
          onPressed: () => dialogs.confirm(
              context, 'Confirm Dialog Title', 'This is Conform Dialog box'),
          child: Text('Confirm dialog'),
        )
      ],
    );
  }
}
