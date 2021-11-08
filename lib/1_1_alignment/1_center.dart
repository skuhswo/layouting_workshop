import 'dart:ui';

import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Parameter heightFactor und widthFactor sind nicht sehr nützlich
      // heightFactor: 2,
      // widthFactor: 2,
      child: Text('zentriert'),
    );
  }
}
