import 'package:flutter/material.dart';
import 'dialogs.dart';

class BuildDialogBoxes {

  Dialogs dialogs = Dialogs();

  Row buildInformationDialog(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.yellowAccent,
          onPressed: () =>
              dialogs.information(context,
                  'Informatin Dialog Title', 'This is Infromation Dialog box'),
          child: Text('Informarion dialog'),
        )
      ],
    );
  }

  Row buildWaitingDialog(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.greenAccent,
          onPressed: () async {
            dialogs.waiting(
                context, 'Waiting Dialog Title', 'This is Waiting Dialog box');
            await Future.delayed(Duration(seconds: 2));
            Navigator.pop(context);
          },
          child: Text('Waiting dialog'),
        )
      ],
    );
  }

  Row buildConfirmDialog(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.lightBlue,
          onPressed: () =>
              dialogs.confirm(
                  context, 'Confirm Dialog Title',
                  'This is Conform Dialog box'),
          child: Text('Confirm dialog'),
        )
      ],
    );
  }
}