/// @author: wml
/// @date  : 2019-07-27 15:34
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';
import 'page_business.dart';
import 'page_home.dart';
import 'page_school.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  _BottomNavigationBarDemoState createState() => _BottomNavigationBarDemoState();
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _bottomNavPages = List(); // 底部导航栏各个可切换页面组

  @override
  void initState() {
    super.initState();
    _bottomNavPages..add(PageHome('首页'))..add(PageBusiness('商城'))..add(PageSchool('课程'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('商城')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('课程')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
