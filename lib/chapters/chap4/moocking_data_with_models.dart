import 'package:flutter/material.dart';
import 'package:flutter_starter/chapters/chap4/mock/mock_location.dart';
import 'location_detail.dart';
import 'model/location.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();
  return runApp(MaterialApp(home: LocationDetail(mockLocation)));
}