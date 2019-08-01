/// @author: wml
/// @date  : 2019-07-31 18:44
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

import 'bottom_app_bar.dart';
import 'bottom_navigation_bar.dart';
import 'cupertino_tab_bar.dart';

class BottomBarIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Demos'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('BottomNavigationBar Sample'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarDemo())),
          ),
          ListTile(
            title: Text('BottomAppBar Sample'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BottomAppBarDemo())),
          ),
          ListTile(
            title: Text('CupertinoTabBar Sample'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoTabBar())),
          ),
        ],
      ),
    );
  }
}
