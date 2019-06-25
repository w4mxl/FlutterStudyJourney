/// @author: wml
/// @date  : 2019-06-25 17:37
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import "package:flutter/material.dart";

class Ui01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
              color: Colors.red,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                )
              ],
            ),
            Container(
              width: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
