import 'dart:ui';

import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      // mögliche Werte von Alognmemnt erhält man über die Code Completion
      alignment: Alignment.bottomLeft,
      child: Text(
        "unten links",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
