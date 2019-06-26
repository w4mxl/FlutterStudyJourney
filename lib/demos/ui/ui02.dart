/// @author: wml
/// @date  : 2019-06-26 16:18
/// @email : mxl1989@gmail.com
/// @desc  : TODO

import "package:flutter/material.dart";

class Ui02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/icon/ios.png'),
            ),
            Text(
              'Wml',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Developer',
              style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[100],
                  letterSpacing: 2.5),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.red,
                ),
                title: Text(
                  '18611249999',
                  style: TextStyle(fontSize: 20, color: Colors.red.shade900),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                title: Text(
                  'mxl1989@gmail.com',
                  style: TextStyle(fontSize: 20, color: Colors.red.shade900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
