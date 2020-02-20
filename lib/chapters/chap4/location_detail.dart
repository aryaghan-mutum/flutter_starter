import 'package:flutter/material.dart';
import 'package:flutter_starter/chapters/chap4/model/location.dart';
import 'model/location.dart';

/// Defining LocationDetail as a class:
class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(location),
      ),
    );
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();

    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }

    return result;
  }

  Widget _sectionTitle(String text) {
    return Text(text);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
  
  Widget _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    
    for(int i=0; i< location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
  }
}
