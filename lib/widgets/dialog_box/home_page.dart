import 'package:flutter_starter/widgets/dialog_box/dialog_boxes.dart';

import 'dialogs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dialogs dialogs = Dialogs();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: buildAppBar(),
      body: buildAppBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Column buildAppBody() {
    BuildDialogBoxes buildDialogBoxes = BuildDialogBoxes();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildDialogBoxes.buildInformationDialog(context),
        buildDialogBoxes.buildWaitingDialog(context),
        buildDialogBoxes.buildConfirmDialog(context),
      ],
    );
  }
}
