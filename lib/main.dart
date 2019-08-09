import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wml_demos/demos/ListView/listview.dart';
import 'package:flutter_wml_demos/demos/dio/flutter_dio.dart';
import 'package:flutter_wml_demos/demos/html/flutter_html.dart';

import 'demos/audio/audioplayers.dart';
import 'demos/bottom_bar/bottom_bar_index.dart';
import 'demos/route/page_first.dart';
import 'demos/route/page_two_2.dart';
import 'demos/sliver_appbar/sliver_app_bar.dart';
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
        'ui_row_column': (BuildContext context) => Ui01(),
        'ui_person_info': (BuildContext context) => Ui02(),
        'listview': (BuildContext context) => ListViewPage(),
        'sliver_appbar': (BuildContext context) => SliverAppBarPage(),
        'flutter_html': (BuildContext context) => FlutterHtmlPage(title: 'flutter_html'),
        'dio': (BuildContext context) => DioExercise(),
        'audio_player': (BuildContext context) => AudioPlayerDemo(),
        'bottom_navigation_bar': (BuildContext context) => BottomBarIndex(),
        'route_manager': (BuildContext context) => PageFirst(),
        'page_two_2': (BuildContext context) => PageTwo2(),
      },
    );
  }
}

class Demo {
  final String title;
  final String subtitle;
  final String routeName;

  const Demo({this.title, this.subtitle, this.routeName});
}

const Demos = [
  Demo(title: 'BottomNavigationBar', subtitle: '展示底部导航栏的三种实现方式', routeName: 'bottom_navigation_bar'),
  Demo(title: 'Row & Column', subtitle: 'Row & Column widget 练习', routeName: 'ui_row_column'),
  Demo(title: '个人信息页面', subtitle: 'Card & 自定义字体 练习', routeName: 'ui_person_info'),
  Demo(title: 'Audio Player', subtitle: '播放本地音频文件', routeName: 'audio_player'),
  Demo(title: 'ListView', subtitle: 'listview 多种实现方式', routeName: 'listview'),
  Demo(title: 'SliverAppBar', subtitle: 'SliverAppBar 练习', routeName: 'sliver_appbar'),
  Demo(title: 'Flutter Html', subtitle: 'Html 渲染 练习', routeName: 'flutter_html'),
  Demo(title: 'Dio', subtitle: 'Dio 网络库 练习', routeName: 'dio'),
  Demo(title: 'Route', subtitle: '路由管理（页面跳转） 练习', routeName: 'route_manager'),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        title: Text('学习 Flutter 时的一些 Demo'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(Demos[index].title),
              subtitle: Text(Demos[index].subtitle),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () => Navigator.pushNamed(context, Demos[index].routeName),
            );
          },
          separatorBuilder: (context, index) => Divider(
                height: 0,
              ),
          itemCount: Demos.length),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
