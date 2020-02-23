import 'package:flutter/material.dart';

void main() => runApp(PlaceHolderApp());

class PlaceHolderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _title = 'Place Holder Fade In Image App';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(appBar: buildAppBar(_title), body: buildAppBody()),
    );
  }

  AppBar buildAppBar(String title) {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(title),
      centerTitle: true,
    );
  }

  Center buildAppBody() {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/cat.jpeg',
        image: 'https://picsum.photos/250?image=9',
      ),
    );
  }
}
