/// @author: wml
/// @date  : 2019-07-27 15:36
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';
import 'page_home.dart';
import 'page_business.dart';
import 'page_school.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
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

    _bottomNavPages..add(PageHome('首页'))..add(PageBusiness('商城'))..add(PageSchool('课程'))..add(PageBusiness('搜索'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavPages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(
                Icons.business,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            SizedBox(), // 增加一些间隔
            IconButton(
              icon: Icon(
                Icons.school,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(3),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () => _onItemTapped(2),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // 设置 floatingActionButton 在底部导航栏中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
