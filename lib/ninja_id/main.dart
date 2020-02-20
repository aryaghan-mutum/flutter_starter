import 'package:flutter/material.dart';

/// This code is taken from The Net Ninja:

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],
      appBar: appBar(),
      body: appBody(ninjaLevel),
      floatingActionButton: floatingAction(ninjaLevel),
    );
  }
}

floatingAction(int ninjaLevel) {
  return FloatingActionButton(
    onPressed: () {
      setState(() {
        ninjaLevel += 1;
      });
    },
    child: Icon(Icons.add),
    backgroundColor: Colors.grey[800],
    elevation: 0.0,
  );
}

void setState(Null Function() param0) {
}

appBody(int ninjaLevel) {


  return Padding(
    padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/cat.jpeg'),
            radius: 40.0,
          ),
        ),
        Divider(
          height: 90.0,
          color: Colors.grey[800],
        ),
        Text(
          'NAME',
          style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
        ),
        SizedBox(height: 10.0),
        Text(
          'Anurag',
          style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30.0),
        Text(
          'CURRENT LEVEL',
          style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
        ),
        SizedBox(height: 10.0),
        Text(
          '$ninjaLevel',
          style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.grey[400],
            ),
            SizedBox(width: 10.0),
            Text(
              'anu@gmail.com',
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.grey[400],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

appBar() {
  return AppBar(
    backgroundColor: Colors.grey[850],
    title: const Text('My App', style: TextStyle(color: Colors.white)),
    centerTitle: true,
    elevation: 0.0,
  );
}
