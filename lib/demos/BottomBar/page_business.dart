/// @author: wml
/// @date  : 2019-08-01 11:57
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

class PageBusiness extends StatefulWidget {
  String _title;

  PageBusiness(this._title);

  @override
  _PageBusinessState createState() => _PageBusinessState();
}

class _PageBusinessState extends State<PageBusiness> {
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
