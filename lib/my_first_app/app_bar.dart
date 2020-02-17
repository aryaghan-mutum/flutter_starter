import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
      backgroundColor: Colors.blue[600],
      title: const Text('My App', style: TextStyle(color: Colors.amberAccent)),
      centerTitle: true);
}