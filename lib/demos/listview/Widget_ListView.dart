import 'package:flutter/material.dart';

/*
ListView
ListView.builder
ListView.separated
ListView.custom
*/

class ListViewPage extends StatelessWidget {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 5; i++) {
      listData.add(new ListItem('我是 list item $i '));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView 的几种实现方式及一些属性'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Icon(Icons.all_inclusive),
                Text(
                  'Wml01',
                ),
                Text(
                  'Wml02',
                ),
                Text(
                  'Wml03',
                ),
                Text(
                  'Wml04',
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              physics:
                  AlwaysScrollableScrollPhysics(), // BouncingScrollPhysics,ClampingScrollPhysics,NeverScrollablePhysics,AlwaysScrollableScrollPhysics
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(listData[index].title),
                );
              },
              itemCount: listData.length,
            ),
          )
        ],
      ),
    );
  }
}

class ListItem {
  String title;

  ListItem(this.title);
}
