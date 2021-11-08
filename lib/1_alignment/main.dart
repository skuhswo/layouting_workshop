import 'package:flutter/material.dart';
import 'package:layouting/1_alignment/1_center.dart';
import 'package:layouting/1_alignment/2_fractionally_sized_box.dart';
import 'package:layouting/1_alignment/3_align.dart';
import 'package:layouting/1_alignment/4_padding.dart';
import 'package:layouting/1_alignment/5_baseline.dart';
import 'package:layouting/1_alignment/6_safe_area.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: NavigateWidget())));
}
class NavigateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alignment Examples'),
        ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        //controller: ScrollController(initialScrollOffset: 100),
        //physics: NeverScrollableScrollPhysics(),
        children: [
          TextButton(
            child: Text('1. Center Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Center Example'),
                    ),
                    body: //MediaQueryExample(),
                    CenterExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('2. FractionallySizedBox Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('FractionallySizedBox Example'),
                    ),
                    body: //MediaQueryExample(),
                    FractionallySizedBoxExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('3. Align Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Align Example'),
                    ),
                    body: //MediaQueryExample(),
                    AlignExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('4. Padding Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Padding Example'),
                    ),
                    body: //MediaQueryExample(),
                    PaddingExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('5. Baseline Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Baseline Example'),
                    ),
                    body: //MediaQueryExample(),
                    BaselineExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('6. Safe Area Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Safe Area Example'),
                    ),
                    body: //MediaQueryExample(),
                    SafeAreaExample()
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}