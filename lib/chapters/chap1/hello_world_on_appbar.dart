import 'package:flutter/material.dart';

/// Approach 1: Expression body:
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Hello World App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Raleway',
              ),
            ),
          ),
        ),
      ),
    );

/// Approach 2: Block body:
//void main() {
//  return runApp(
//    MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('My App'),
//        ),
//      ),
//    ),
//  );
//}
