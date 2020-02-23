import 'package:flutter/material.dart';

class BottomModal {
  bottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _createTitle(context, 'Take Photo', Icons.camera_alt, _operation2),
              _createTitle(context, 'Images', Icons.photo_library, _operation3),
              _createTitle(context, 'Message', Icons.message, _operation1),
            ],
          );
        });
  }

  ListTile _createTitle(
      BuildContext context, String titleName, IconData icon, Function action) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        titleName,
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: () {
        Navigator.of(context);
        action();
      },
    );
  }

  _operation1() => print('action 1');
  _operation2() => print('action 2');
  _operation3() => print('action 3');
}
