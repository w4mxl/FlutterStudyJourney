import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wml_demos/demos/ListView/Widget_ListView.dart';
import 'package:flutter_wml_demos/demos/SliverAppBar/Widget_SliverAppBar.dart';
import 'package:flutter_wml_demos/demos/dio/flutter_dio.dart';
import 'package:flutter_wml_demos/demos/html/flutter_html.dart';

import 'demos/ui/ui01.dart';
import 'demos/ui/ui02.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Whitney'),
      routes: <String, WidgetBuilder>{
        '/UI01': (BuildContext context) => Ui01(),
        '/UI02': (BuildContext context) => Ui02(),
        '/ListViewPage': (BuildContext context) => new ListViewPage(),
        '/SliverAppBarPage': (BuildContext context) => new SliverAppBarPage(),
        '/FlutterHtmlPage': (BuildContext context) => new FlutterHtmlPage(
              title: 'flutter_html',
            ),
        '/DioExercise': (BuildContext context) => new DioExercise(),
      },
    );
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
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      drawer: SizedBox(
        width: 200.0,
        child: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  accountName: Text('wml'),
                  accountEmail: Text('mxl1989@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/3645496?s=460&v=4"),
                  ),
                ),
                new ListTile(
                  title: Text('ui-01'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/UI01');
                  },
                ),
                ListTile(
                  title: Text('ui-02'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed('/UI02');
                  },
                ),
                new ListTile(
                  title: Text('ListView'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/ListViewPage');
                  },
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
                ),
                new ListTile(
                  title: Text('dio'),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/DioExercise');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
