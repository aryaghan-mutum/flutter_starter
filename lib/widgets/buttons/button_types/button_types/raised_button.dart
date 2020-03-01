import 'package:flutter/material.dart';

class MyRaisedButton {
  RaisedButton buildRaisedBtn(String buttonName, BuildContext context) {
    return RaisedButton(
      color: Colors.red,
      textColor: Colors.white,
      splashColor: Colors.amber,
      elevation: 10.0,
      highlightElevation: 30.0,
      shape: Border.all(width: 2.0, color: Colors.black),
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      onPressed: () {
        print('pressed!: ${buttonName}');
      },
      child: Text(
        buttonName,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
