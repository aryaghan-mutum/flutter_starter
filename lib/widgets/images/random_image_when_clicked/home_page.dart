import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  String networkImage = 'https://source.unsplash.com/random/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        child: Center(
          child: GestureDetector(
            child: imageProvider(),
            onTap: _buildNewImage,
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Widget imageProvider() {
    return Image.network(
      networkImage,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  void _buildNewImage() {
    setState(() {
      networkImage = '$networkImage$counter';
      counter = counter + 1;
    });
  }
}
