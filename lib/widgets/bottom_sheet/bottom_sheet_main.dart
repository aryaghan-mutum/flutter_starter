import 'package:flutter/material.dart';
import 'bottom_sheet.dart';

void main() => runApp(BottomSheetApp());

class BottomSheetApp extends StatelessWidget {
  final String _title = 'Dialog Box App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: _title),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BottomModal bottomModal = BottomModal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
          centerTitle: true,
          title: Text('Bottom Sheet App'),
          backgroundColor: Colors.blueGrey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome!',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.amber,
        onPressed: () => bottomModal.bottomSheet(context),
      ),


    );
  }
}
