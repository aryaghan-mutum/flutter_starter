import 'package:flutter/material.dart';

class Dialogs {
  information(BuildContext context, String title, String description) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text(description)],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Ok'),
              )
            ],
          );
        });
  }

  waiting(BuildContext context, String title, String description) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text(description)],
              ),
            ),
          );
        });
  }

  confirm(BuildContext context, String title, String description) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[Text(description)],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () => _confirmResult(false, context),
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: () => _confirmResult(true, context),
                child: Text('Yes'),
              )
            ],
          );
        });
  }

  _confirmResult(bool isYes, BuildContext context) {
    if (isYes) {
      print('Yes action');
      Navigator.pop(context);
    } else {
      print('cancel action');
      Navigator.pop(context);
    }
  }
}
