import 'package:flutter/material.dart';

appBody() => Padding(
      padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
      child: Column(
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/cat.jpeg'),
              radius: 120.0,
            ),
          ),
          Divider(height: 20.0, color: Colors.grey[800]),
          Center(
            child: Container(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  padaButtons('Button 1'),
                  padaButtons('Button 2'),
                  padaButtons('Button 3'),
                  padaButtons('Button 4'),

                ],
              ),
            ),
          ),
        ],
      ),
    );

padaButtons(String buttonName) => FloatingActionButton.extended(
      backgroundColor: Colors.black12,
      splashColor: Colors.yellow,
      foregroundColor: Colors.black,
      icon: Icon(Icons.adjust),
      label: Text(buttonName),
      onPressed: () {
        print('pressed!');
      },
    );
