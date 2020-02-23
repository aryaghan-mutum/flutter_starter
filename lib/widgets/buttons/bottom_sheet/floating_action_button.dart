import 'package:flutter/material.dart';
import 'bottom_sheet.dart';

class FloatingAction {
  BottomModal bottomModal = BottomModal();

  FloatingActionButton buildFloatingActionBtn(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      foregroundColor: Colors.amber,
      onPressed: () => bottomModal.bottomSheet(context),
    );
  }
}
