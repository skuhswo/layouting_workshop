import 'dart:ui';

import 'package:flutter/material.dart';

class ColumnMainAxisAlignmentExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ColoredBox(
            color: Colors.grey,
            child: Column(
              children: [
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Erste Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Zweite Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Dritte Zeile'))),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
          ColoredBox(
            color: Colors.lightGreen,
            child: Column(
              children: [
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Erste Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Zweite Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Dritte Zeile'))),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          ColoredBox(
            color: Colors.orangeAccent,
            child: Column(
              children: [
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Erste Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Zweite Zeile'))),
                Container(
                    height: 30,
                    width: 100,
                    color: Theme.of(context).colorScheme.background,
                    child: Center(child: Text('Dritte Zeile'))),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnCrossAxisAlignmentExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                'Start',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Erste Zeile'),
              Text('Zweite Zeile und etwas länger in der Mitte'),
              Text('Dritte Zeile'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                'Center',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Erste Zeile'),
              Text('Zweite Zeile und etwas länger in der Mitte'),
              Text('Dritte Zeile'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                'End',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Erste Zeile'),
              Text('Zweite Zeile und etwas länger in der Mitte'),
              Text('Dritte Zeile'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            verticalDirection: VerticalDirection.up,
            children: [
              Text(
                'Stretch',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Erste Zeile'),
              Text('Zweite Zeile und etwas länger in der Mitte'),
              Text('Dritte Zeile'),
            ],
          ),
        ],
      ),
    );
  }
}

class RowOverflowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Expanded:', style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text('Erster Text', style: TextStyle(fontSize: 40))),
            Expanded(
                child: Text('Zweiter Text', style: TextStyle(fontSize: 40))),
            Expanded(
                child: Text('Dritter Text', style: TextStyle(fontSize: 40))),
          ],
        ),
        const SizedBox(height: 100),
        Text('Flexible:', style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            Flexible(
                flex: 2,
                child: Text('Erster Text', style: TextStyle(fontSize: 40))),
            Expanded(
                child: Text('Zweiter Text', style: TextStyle(fontSize: 40))),
            Expanded(
                child: Text('Dritter Text', style: TextStyle(fontSize: 40))),
          ],
        ),
      ],
    );
  }
}

class SpacerColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text('Erste Zeile')),
          Expanded(child: Text('Zweite Zeile')),
          Expanded(child: Text('Dritte Zeile')),
          Spacer(flex: 2),
          Expanded(child: Text('Mit Abstand das Ende')),
        ],
      ),
    );
  }
}

class ListViewWithScrollControllerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: ScrollController(initialScrollOffset: 100),
      children: [
        Text('Erstes Item'),
        Text('Zweites Item'),
        Text('Drittes Item'),
        // ...
      ],
    );
  }
}
