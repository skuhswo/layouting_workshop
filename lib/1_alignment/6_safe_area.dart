import 'dart:ui';

import 'package:flutter/material.dart';

class SafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Positionierung erfolgt nur im empfohlenen Bereich, z.B. nicht unterhalb der Statusbar oder in der Rundung des Geräts
    return SafeArea(
        child: Align(alignment: Alignment.bottomLeft, child: Text('SafeArea')));
  }
}
