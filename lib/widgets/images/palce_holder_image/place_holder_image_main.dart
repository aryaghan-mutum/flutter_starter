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
    var placeHolderImage = 'assets/images/cat.jpeg';
    var networkImage = 'https://picsum.photos/250?image=9';

    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: placeHolderImage,
        image: networkImage,
      ),
    );
  }
}
