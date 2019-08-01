/// @author: wml
/// @date  : 2019-08-01 11:57
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

class PageSchool extends StatefulWidget {
  String _title;

  PageSchool(this._title);

  @override
  _PageSchoolState createState() => _PageSchoolState();
}

class _PageSchoolState extends State<PageSchool> {
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
