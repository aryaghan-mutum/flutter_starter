import 'package:flutter/material.dart';
import 'popup_menu_button_constants.dart';

class PopupButtonMenu {
  PopupMenuButton buildPopupMenuBtn() {
    return PopupMenuButton<String>(
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.settings) {
      print('Seetings');
    }
    if (choice == Constants.subscribe) {
      print('Subscribe');
    }
    if (choice == Constants.signout) {
      print('Signout');
    }
  }
}
