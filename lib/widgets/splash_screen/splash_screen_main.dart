import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(home: SplashScreenApp()));

class SplashScreenApp extends StatefulWidget {
  @override
  _SplashScreenAppState createState() => _SplashScreenAppState();
}

class _SplashScreenAppState extends State<SplashScreenApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
          seconds: 4,
          navigateAfterSeconds: AfterSplash(),
          title: Text(
            'This is SplashScreen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          image: Image.network('https://i.imgur.com/gGtg1g7.jpg'),
          backgroundColor: Colors.purpleAccent,
          styleTextUnderTheLoader: TextStyle(),
          photoSize: 140.0,
          onClick: () => print("You clicked on Splash Screen"),
          loaderColor: Colors.black87),
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Text(
          "Done!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.purpleAccent,
      title: Text("This is Home Page(After Splash)"),
      centerTitle: true,
    );
  }
}
