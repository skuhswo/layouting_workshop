import 'dart:ui';

import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // Flutter Inspector kann hier helfen zu sehen, was passiert
      padding: const EdgeInsets.only(top: 100),
      child: Baseline(
        baselineType: TextBaseline.alphabetic,
        baseline: -20,
        child: Text('Baseline -20'),
      ),
    );
  }
}
