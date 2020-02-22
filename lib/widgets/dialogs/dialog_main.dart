import 'package:flutter/material.dart';
import 'dialogs.dart';

void main() => runApp(DialogApp());

class DialogApp extends StatelessWidget {
  final String _title = 'Dialog Box App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}

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
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.yellowAccent,
                onPressed: () => dialogs.information(context, 'Informatin Dialog Title', 'This is Infromation Dialog box'),
                child: Text('Informarion dialog'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.greenAccent,
                onPressed: () async {
                  dialogs.waiting(context, 'Waiting Dialog Title', 'This is Waiting Dialog box');
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
                color: Colors.lightBlue,
                onPressed: () => dialogs.confirm(context, 'Confirm Dialog Title', 'This is Conform Dialog box'),
                child: Text('Confirm dialog'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
