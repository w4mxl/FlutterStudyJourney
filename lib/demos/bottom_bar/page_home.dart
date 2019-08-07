/// @author: wml
/// @date  : 2019-08-01 11:56
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  String _title;

  PageHome(this._title);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(
          '${widget._title}内容',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
