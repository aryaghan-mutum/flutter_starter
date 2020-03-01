import 'package:flutter/material.dart';

class MyFloatingActionButton {
  FloatingActionButton buildFloatingActionBtn(
      String buttonName, BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.description),
      foregroundColor: Colors.amber,
      onPressed: () {
        print('pressed!: ${buttonName}');
      },
    );
  }

  FloatingActionButton buildFloatingActionExtendedBtn(
      String buttonName, BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.blue,
      splashColor: Colors.yellow,
      foregroundColor: Colors.yellowAccent,
      icon: Icon(Icons.adjust),
      label: Text(buttonName),
      onPressed: () {
        print('pressed!: ${buttonName}');
      },
    );
  }
}
