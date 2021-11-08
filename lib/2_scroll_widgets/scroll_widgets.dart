import 'dart:ui';

import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = ('Item ' * 100).split(' ')
      ..removeWhere((item) => item.isEmpty);

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Text(items.elementAt(index) + (++index).toString());
      },
    );
  }
}

class ListViewSeparatorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = ('Item ' * 100).split(' ')
      ..removeWhere((item) => item.isEmpty);

    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(items.elementAt(index)),
        onTap: () {},
      ),
      separatorBuilder: (context, _) => Divider(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
      ],
    );
  }
}

class GridViewExtendExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 80,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('5'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('6'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('7'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('8'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('9'))),
      ],
    );
  }
}

class GridViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = ('Item ' * 100).split(' ')
      ..removeWhere((item) => item.isEmpty);

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.61,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ColoredBox(
            color: Colors.grey,
            child: Center(
                child: Text(items.elementAt(index) + (++index).toString())));
      },
    );
  }
}

class ScrollDirectionExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        ColoredBox(color: Colors.grey, child: Center(child: Text('1'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('2'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('3'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('4'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('5'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('6'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('7'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('8'))),
        ColoredBox(color: Colors.grey, child: Center(child: Text('9'))),
      ],
    );
  }
}

class ShrinkWrapFailureExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView(
          children: [
            Text('Hallo, Welt'),
          ],
        )
      ],
    );
  }
}

class ShrinkWrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            Text('Hallo, Welt'),
          ],
        )
      ],
    );
  }
}

class SingleChildScrollViewWithoutScrollExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hallo, Welt',
      style: TextStyle(fontSize: 400),
    );
  }
}

class SingleChildScrollViewWithScrollExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        'Hallo, Welt',
        style: TextStyle(fontSize: 400),
      ),
    );
  }
}

class ScrollbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Text(
          'Hallo, Welt',
          style: TextStyle(fontSize: 400),
        ),
      ),
    );
  }
}

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      onPageChanged: (index) => print('Seite: ${++index}'),
      scrollDirection: Axis.vertical,
      children: [
        ColoredBox(color: Colors.red),
        ColoredBox(color: Colors.green),
        ColoredBox(color: Colors.blue),
      ],
    );
  }
}

class KeepAliveClientMixinExample extends StatefulWidget {
  const KeepAliveClientMixinExample({required this.index});

  final int index;

  @override
  _KeepAliveClientMixinExampleState createState() =>
      _KeepAliveClientMixinExampleState();
}

// Beispiel ohne Implementierung von Mixin
// class _KeepAliveClientMixinExampleState
//     extends State<KeepAliveClientMixinExample> {
//   @override
//   Widget build(BuildContext context) {
//     return Text('Keep Alive, please! Index: ${widget.index}');
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//
//     print('Disposed: ${widget.index}');
//   }
// }

// Beispiel mit Implementierung von Mixin
class _KeepAliveClientMixinExampleState
    extends State<KeepAliveClientMixinExample>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text('Keep Alive, please! Index: ${widget.index}');
  }

  @override
  void dispose() {
    super.dispose();

    print('Disposed: ${widget.index}');
  }

  @override
  bool get wantKeepAlive => true;
}

class KeepAliveClientWidgetUsageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widgets = List.generate(
        200, (index) => KeepAliveClientMixinExample(index: index));

    return ListView(
      children: widgets,
    );
  }
}

class NotificationListenerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        print(notification.runtimeType.toString());
        // Wir definieren die Notification als behandelt
        return true;
      },
      child: SingleChildScrollView(
        child: Text(
          'Hallo, Welt',
          style: TextStyle(fontSize: 400),
        ),
      ),
    );
  }
}