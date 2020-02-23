import 'package:flutter/material.dart';

/// Approach 1:
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    return Scaffold(
//      body: Container(
//          child: new Image.network(
//            'https://images.unsplash.com/photo-1514897575457-c4db467cf78e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80',
//            width: size.width,
//            height: size.height,
//            fit: BoxFit.fill,
//
//        ),
//      ),
//    );
//  }
//}


/// Approach 2:
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1514897575457-c4db467cf78e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80'),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
