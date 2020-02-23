import 'package:flutter/material.dart';

class AppBody {
  Center buildAppBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome!',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}