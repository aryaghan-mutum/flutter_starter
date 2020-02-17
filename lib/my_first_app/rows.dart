import 'package:flutter/material.dart';

Widget buildRows() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text('hello world'),
      FlatButton(
          onPressed: () {},
          color: Colors.amberAccent,
          child: const Text('click me!')),
      Container(
        color: Colors.orange,
        padding: const EdgeInsets.all(30.0),
        child: const Text('inside container'),
      )
    ],
  );
}

Widget buildRowsWithImage() {
  return Row(
    children: <Widget>[
      Expanded(flex: 3, child: Image.asset('assets/images/sun.jpeg')),
      getContainer(EdgeInsets.all(30.0), Colors.orange, 'a'),
      getContainer(EdgeInsets.all(30.0), Colors.green, 'b'),
      getContainer(EdgeInsets.all(30.0), Colors.deepPurple, 'c'),
    ],
  );
}

Widget getContainer(EdgeInsets padding, Color color, String text) {
  return Expanded(
      child: Container(padding: padding, color: color, child: Text(text)));
}
