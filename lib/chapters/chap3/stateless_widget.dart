import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: LocationDetail(),
    ),
  );

}

/// Defining LocationDetail as a class:
class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Apps'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _BoxContainerWidget(color: Colors.red, text: 'red box'),
          _BoxContainerWidget(color: Colors.blue, text: 'blue box'),
          _BoxContainerWidget(color: Colors.yellow, text: 'yello box'),
        ],
      ),
    );
  }
}

/// Defining _buildContainer as a class:
class _BoxContainerWidget extends StatelessWidget {
  final String text;
  final Color color;

  _BoxContainerWidget({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(text),
    );
  }
}
