import 'package:flutter/material.dart';

Widget buildColumns() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        children: <Widget>[
          const Text('hello,'),
          const Text('world'),
        ],
      ),
      getContainer(Colors.orange, 'box 1', 30.0),
      getContainer(Colors.deepPurple, 'box 2', 20.0),
      getContainer(Colors.green, 'box 3', 10.0),
    ],
  );
}

Widget getContainer(Color color, String boxName, double size) {
  return Container(color: color, child: Text(boxName), padding: EdgeInsets.all(size));
}
