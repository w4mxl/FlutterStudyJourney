/// @author: wml
/// @date  : 2019-08-01 10:59
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import 'package:flutter/cupertino.dart';

class CupertinoTabBarDemo extends StatefulWidget {
  @override
  _CupertinoTabBarDemoState createState() => _CupertinoTabBarDemoState();
}

class _CupertinoTabBarDemoState extends State<CupertinoTabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.conversation_bubble), title: Text('消息')),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), title: Text('我的')),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: const Text('Next page'),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute<void>(
                        builder: (BuildContext context) {
                          return CupertinoPageScaffold(
                            navigationBar: CupertinoNavigationBar(
                              middle: Text('Page 2 of tab $index'),
                            ),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Back'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
