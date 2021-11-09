import 'package:flutter/material.dart';
import 'package:layouting/2_scroll_widgets/scroll_widgets.dart';


void main() {
  runApp(MaterialApp(home: Scaffold(body: NavigateWidget())));
}
class NavigateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scroll Widget Examples'),
        ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        //controller: ScrollController(initialScrollOffset: 100),
        //physics: NeverScrollableScrollPhysics(),
        children: [
          TextButton(
            child: Text('1. ListViewBuilder Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('ListViewBuilder Example'),
                    ),
                    body: //MediaQueryExample(),
                    ListViewBuilderExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('2.ListViewSeparator Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('ListViewSeparatorExample Example'),
                    ),
                    body: //MediaQueryExample(),
                    ListViewSeparatorExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('3. GridView Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('GridView Example'),
                    ),
                    body: //MediaQueryExample(),
                    GridViewExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('4. GridViewExtend Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('GridViewExtend Example'),
                    ),
                    body: //MediaQueryExample(),
                    GridViewExtendExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('5. GridViewBuilder Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('GridViewBuilder Example'),
                    ),
                    body: //MediaQueryExample(),
                    GridViewBuilderExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('6. ScrollDirection Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('ScrollDirection Example'),
                    ),
                    body: //MediaQueryExample(),
                    ScrollDirectionExample()
                ),
              ),
            ),
          ),
          TextButton(
            child: Text('7. ShrinkWrap Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('ShrinkWrap Example'),
                    ),
                    body: //MediaQueryExample(),
                    ShrinkWrapExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('8. SingleChildScrollViewWithoutScroll Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('SingleChildScrollViewWithoutScroll Example'),
                    ),
                    body: //MediaQueryExample(),
                    SingleChildScrollViewWithoutScrollExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('9. SingleChildScrollViewWithScrollExample'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('SingleChildScrollViewWithScroll Example'),
                    ),
                    body: //MediaQueryExample(),
                    SingleChildScrollViewWithScrollExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('10. Scrollbar Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('Scrollbar Example'),
                    ),
                    body: //MediaQueryExample(),
                    ScrollbarExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('11. PageView Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('PageView Example'),
                    ),
                    body: //MediaQueryExample(),
                    PageViewExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('12. KeepAliveClientWidgetUsage Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('KeepAliveClientWidgetUsage Example'),
                    ),
                    body: //MediaQueryExample(),
                    KeepAliveClientWidgetUsageExample()
                ),
              ),
            ),
          ),TextButton(
            child: Text('13. NotificationListener Example'),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text('NotificationListener Example'),
                    ),
                    body: //MediaQueryExample(),
                    NotificationListenerExample()
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}