/// @author: wml
/// @date  : 2019-08-09 15:16
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String text;

  const PageTwo({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page two'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text != null ? text : ''),
            RaisedButton(
              onPressed: () => Navigator.pop(context, '我是来自p2的返回值'),
              child: Text('返回'),
            ),
          ],
        ),
      ),
    );
  }
}
