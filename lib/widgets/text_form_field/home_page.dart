import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildAppBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.pinkAccent,
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  Card buildAppBody() {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              buildEmail(),
              buildPassword(),
              buildSignInBtn(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email:'),
      validator: (input) => !input.contains('@') ? 'Not a valid Email' : null,
      onSaved: (input) => _email = input,
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password:'),
      validator: (input) => input.length < 8 ? 'You need at least 8 characters' : null,
      onSaved: (input) => _password = input,
      obscureText: true,
    );
  }

  Row buildSignInBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: _submit,
            color: Colors.pinkAccent,
            textColor: Colors.white,
            child: Text('Sign in'),
          ),
        )
      ],
    );
  }

  void _submit() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(_email);
      print(_password);
    }
  }
}
