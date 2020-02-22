import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: 'Example App',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: myAppBar('My App', Colors.orangeAccent),
      body: MyAppBody(color: Colors.greenAccent, text: 'Some Text in Center'),
    ),
  ));
}

/// app bar method
myAppBar(String text, Color color) {
  return AppBar(
    title: Text(text),
    backgroundColor: color,
    centerTitle: true,
  );
}

/// body class
class MyAppBody extends StatelessWidget {
  final String text;
  final Color color;

  //const MyAppBody({Key key, this.text, this.color}) : super(key: key);
  MyAppBody({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(text),
        color: color,
      ),
    );
  }
}
