import 'package:flutter/material.dart';

class MyAppBar {
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('Random Image When Loads App'),
      backgroundColor: Colors.black87,
    );
  }
}
