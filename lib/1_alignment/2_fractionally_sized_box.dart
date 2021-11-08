import 'dart:ui';

import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.75,
        widthFactor: 0.5,
        child: ElevatedButton(
          child: Text(
            "Text",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () => {},
        ),
      ),
    );
  }
}
