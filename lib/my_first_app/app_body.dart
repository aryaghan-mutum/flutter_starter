import 'package:flutter/material.dart';

Widget appBody() {
  return Center(

      /// Container:
      ///  child: buildContainer(),

      /// Icons:
      /// child: buildIconButton(),

      /// Icons in Button:
      /// child: buildIconInButton(),

      /// Buttons:
      /// child: buildRaisedButton(),

      /// Icons:
      /// child: buildIcon(),

      /// Images:
      /// child: buildImage(),

      /// Text:
      /// child: buildText(),
      );
}

Widget buildContainer() {
  return Container(
    color: Colors.grey[300],
    child: const Text('hello'),

    /// padding: ,
  );
}

Widget buildIconButton() {
  return IconButton(
    onPressed: () {
      print('you clicked me!');
    },
    icon: const Icon(Icons.print),
    color: Colors.amberAccent,
    iconSize: 30.0,
  );
}

Widget buildIconInButton() {
  return RaisedButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.print),
    label: const Text('print me'),
    color: Colors.amber,
  );
}

Widget buildRaisedButton() {
  return RaisedButton(
    // can also be replaced with FlatButton
    onPressed: () {
      print('you clicked me.');
      // debugPrint('you clicked me.');
    },
    child: const Text('click me!'),
    color: Colors.blue,
  );
}

Widget buildIcon() {
  return const Icon(
    Icons.airport_shuttle,
    color: Colors.red,
    size: 30.0,
  );
}

Widget buildImage() {
  // Image.asset('assets/images/moon.jpeg'),
  return Image.network(
      'https://images.unsplash.com/photo-1514897575457-c4db467cf78e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80');
}

Widget buildText() {
  return const Text(
    'My body',
    style: TextStyle(
      fontSize: 15.0,
      wordSpacing: 1.0,
      color: Colors.blueGrey,
      fontWeight: FontWeight.bold,
      fontFamily: 'Acme-Regular',
    ),
  );
}
