import 'package:flutter/material.dart';

appBar() {
  final String appTitle = 'Some App';

  return AppBar(
    centerTitle: false,
    elevation: 0.0,
    backgroundColor: Colors.grey[800],


    title: Text(
      appTitle,
      style: TextStyle(color: Colors.white),
    ),
  );
}
