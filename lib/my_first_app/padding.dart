import 'package:flutter/material.dart';

/// Padding Widget doesn't allow margin label
Widget buildPadding() {
  return Padding(
    child: const Text('hello'),
    padding: const EdgeInsets.all(70.0),
  );
}
