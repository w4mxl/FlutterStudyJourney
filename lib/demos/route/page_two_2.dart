/// @author: wml
/// @date  : 2019-08-09 18:23
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';

class PageTwo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var text = ModalRoute.of(context).settings.arguments;

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
