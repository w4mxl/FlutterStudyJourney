/// @author: wml
/// @date  : 2019-08-09 15:16
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/material.dart';
import 'page_two.dart';

class PageFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page one'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo())),
              child: Text('下一页：构建式路由'),
            ),
            RaisedButton(
              onPressed: () async {
                // 跳转到 page two，等待返回结果
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTwo(
                      text: '我是来自p1的参数',
                    ),
                  ),
                );
                // 输出 page two 返回来的结果
                print(result);
              },
              child: Text('下一页：构建式路由 & 传参'),
            ),
            Divider(),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'page_two_2');
              },
              child: Text('下一页：命名式路由'),
            ),
            RaisedButton(
              onPressed: () async {
                // 跳转到 page two 2，等待返回结果
                var result = await Navigator.pushNamed(context, 'page_two_2', arguments: '我是来自p1的命名式路由的参数');
                // 输出 page two 返回来的结果
                print(result);
              },
              child: Text('下一页：命名式路由 & 传参'),
            ),
          ],
        ),
      ),
    );
  }
}
