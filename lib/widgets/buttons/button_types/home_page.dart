import 'package:flutter/material.dart';
import 'package:flutter_starter/widgets/buttons/button_types/button_types/floating_action_button.dart';
import 'package:flutter_starter/widgets/buttons/button_types/button_types/raised_button.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyFloatingActionButton _floatingAction = MyFloatingActionButton();
  MyRaisedButton _raisedButton = MyRaisedButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 0.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _floatingAction.buildFloatingActionBtn('Floating Action Button', context),
                  _floatingAction.buildFloatingActionExtendedBtn('Floating Action Extended Button', context),
                  _raisedButton.buildRaisedBtn("Raised Button", context)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey);
  }
}
