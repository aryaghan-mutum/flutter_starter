import 'package:flutter/material.dart';

Widget getContainer() {
  return Container(
    color: Colors.grey[300],
    child: const Text('hello'),

    ///Padding:
    // padding: EdgeInsets.all(20.0),
    // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
    margin: const EdgeInsets.all(30.0),
  );
}