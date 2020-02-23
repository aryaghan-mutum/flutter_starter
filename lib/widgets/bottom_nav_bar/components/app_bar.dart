import 'package:flutter/material.dart';

class YSAppBar {
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('Yoga Sutras App'),
      backgroundColor: Colors.black87,
    );
  }
}