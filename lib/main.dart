import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wml_demos/demos/SliverAppBar/Widget_SliverAppBar.dart';
import 'package:flutter_wml_demos/demos/pub_flutter_html/flutter_html.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: <String, WidgetBuilder>{
      '/SliverAppBarPage': (BuildContext context) => new SliverAppBarPage(),
      '/FlutterHtmlPage': (BuildContext context) => new FlutterHtmlPage(
            title: 'flutter_html',
          )
    }, theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Whitney'), home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      body: Center(
        child: Text(
          '这里是记录我学习Flutter的一些demo',
          textDirection: TextDirection.ltr,
        ),
      ),
      drawer: SizedBox(
        width: 200.0,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('wml'),
                accountEmail: Text('mxl1989@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: new NetworkImage(
                      "https://avatars2.githubusercontent.com/u/3645496?s=460&v=4"),
                ),
              ),
              new ListTile(
                title: Text('SliverAppBar'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/SliverAppBarPage');
                },
              ),
              new ListTile(
                title: Text('FlutterHtml'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/FlutterHtmlPage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
