import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Apps')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildContainer(Colors.blue, 'box 1'),
            _buildContainer(Colors.red, 'box 2'),
            _buildContainer(Colors.yellow, 'box 3'),
          ],
        ),
      ),
    ),
  );
}

/// Defining _buildContainer as a method:
Widget _buildContainer(Color color, String text) {
  return Container(
    decoration: BoxDecoration(
      color: color,
    ),
    child: Text(text),
  );
}

