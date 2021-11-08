import 'dart:ui';

import 'package:flutter/material.dart';

class TableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(children: [Text('links oben'), Text('rechts oben')]),
            TableRow(children: [Text('links unten'), Text('rechts unten')]),
          ],
        ),
      ),
    );
  }
}

class TableFixedWithExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: {
            0: FractionColumnWidth(0.3),
            1: FractionColumnWidth(0.7),
          },
          border: TableBorder.all(),
          children: [
            TableRow(children: [Text('links oben'), Text('rechts oben')]),
            TableRow(children: [Text('links unten'), Text('rechts unten')]),
          ],
        ),
      ),
    );
  }
}

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Positioned.fill(
            child: ColoredBox(
              color: Colors.black12,
            ),
          ),
          Positioned(
            height: 200,
            width: 200,
            top: 280,
            left: 115,
            child: ColoredBox(color: Colors.green),
          ),
          Center(
            child: Text(
              'Hallo Stack',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Text(
            'Startpunkt unten links',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}

class IndexedStackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: 3,
      alignment: Alignment.bottomLeft,
      children: [
        Positioned.fill(
          child: ColoredBox(
            color: Colors.black12,
          ),
        ),
        Positioned(
          height: 200,
          width: 200,
          top: 280,
          left: 115,
          child: ColoredBox(color: Colors.green),
        ),
        Center(
          child: Text(
            'Hallo Stack',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Text(
          'Startpunkt unten links',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        direction: Axis.horizontal,
        spacing: 10,
        runSpacing: 40,
        alignment: WrapAlignment.end,
        children: [
          Text(
            'Der erste Text',
            style: TextStyle(fontSize: 34),
          ),
          Text(
            'Der zweite Text',
            style: TextStyle(fontSize: 34),
          ),
          Text(
            'Der dritte Text',
            style: TextStyle(fontSize: 34),
          ),
        ],
      ),
    );
  }
}

class SliverExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = List.generate(
      200,
      (index) => Text('A Text, please! Index: $index'),
    );
    final sliverListChildren = widgets.take(100).toList();
    final sliverGridChildren = widgets.skip(100).toList();

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Titel in der AppBar'),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => sliverListChildren.elementAt(index),
            childCount: sliverListChildren.length,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Colors.green,
            height: 200,
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(sliverGridChildren),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        )
      ],
    );
  }
}

class SliverFillViewPortExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillViewport(
          delegate: SliverChildListDelegate(
            [
              ColoredBox(color: Colors.red),
              ColoredBox(color: Colors.green),
              ColoredBox(color: Colors.blue),
            ],
          ),
        ),
      ],
    );
  }
}
