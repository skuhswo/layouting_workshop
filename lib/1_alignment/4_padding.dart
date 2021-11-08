import 'dart:ui';

import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // verschiedene Konstruktoren von EdgeInsets über die Code Completion
      padding: const EdgeInsets.fromLTRB(50, 100, 40, 0),
      // padding: const EdgeInsets.only(left: 50, top: 100, right: 40),
      // padding: const EdgeInsets.all(100),
      child: Text('Padding'),
    );
  }
}
