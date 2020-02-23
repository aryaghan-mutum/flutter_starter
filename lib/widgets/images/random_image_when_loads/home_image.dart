import 'dart:math';

import 'package:flutter/material.dart';

class HomeImage {
  final String _placeHolderImage = 'assets/images/meditation_buddha.jpg';
  final String _imageBaseUrl = 'https://images.unsplash.com/photo-';
  static const String _networkImage1 = 'https://images.unsplash.com/photo-1525241499786-8afb11227d15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage2 = 'https://images.unsplash.com/photo-1505506874110-6a7a69069a08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage3 = 'https://images.unsplash.com/photo-1519810755548-39cd217da494?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage4 = 'https://images.unsplash.com/photo-1489549132488-d00b7eee80f1?ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage5 = 'https://images.unsplash.com/photo-1502318217862-aa4e294ba657?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80';
  static const String _networkImage6 = 'https://images.unsplash.com/photo-1498590880827-3f79fdcd7fbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage7 = 'https://images.unsplash.com/photo-1500586094511-e20694811d14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage8 = 'https://images.unsplash.com/photo-1531333377070-c6575ba98c97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage9 = 'https://images.unsplash.com/photo-1534229317157-f846a08d8b73?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  static const String _networkImage10 = 'https://images.unsplash.com/photo-1505851543971-19811a8f4c21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';

  static List<String> _networkImagesList = <String>[
    _networkImage1,
    _networkImage2,
    _networkImage3,
    _networkImage4,
    _networkImage5,
    _networkImage6,
    _networkImage7,
    _networkImage8,
    _networkImage9,
    _networkImage10
  ];

  var _randomNetworkImage = _networkImagesList[ Random().nextInt(_networkImagesList.length)].toString();

  BoxDecoration buildImage() {
    return BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(_randomNetworkImage),
        fit: BoxFit.fill,
      ),
    );
  }

}
