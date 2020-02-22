import 'package:flutter/material.dart';
import 'dialogs.dart';

void main() => runApp(DialogApp());

class DialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dialogs dialogs = new Dialogs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => dialogs.information(context, 'My Title', 'My Description'),
                child: Text('Informarion dialog'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  dialogs.waiting(context, 'My Title 2', 'My Description 2');
                  await Future.delayed(Duration(seconds: 2));
                  Navigator.pop(context);
                },
                child: Text('Waiting dialog'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => dialogs.confirm(context, 'My Title 3', 'My Description 3'),
                child: Text('Confirm dialog'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
