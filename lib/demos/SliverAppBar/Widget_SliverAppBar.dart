import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> with TickerProviderStateMixin {
  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("我是测试标题 $i", Icons.cake));
    }
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text("SliverAppBarPage"),
              pinned: true,
              floating: true,
              snap: true,
              bottom: TabBar(
                controller: new TabController(length: 2, vsync: this),
                labelColor: Colors.redAccent,
                indicatorColor: Colors.redAccent,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  new Tab(icon: new Icon(Icons.info), text: "Info"),
                  new Tab(icon: new Icon(Icons.cake), text: "cake"),
                ],
              ),
              /*expandedHeight: 200.0,
                floating: false,
                pinned: false,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text("我是一个帅气的标题",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.network(
                      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1531798262708&di=53d278a8427f482c5b836fa0e057f4ea&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F342ac65c103853434cc02dda9f13b07eca80883a.jpg",
                      fit: BoxFit.fill,
                    )),*/
            ),
            /*SliverPersistentHeader(
                floating: false,
                pinned: true,
                  delegate: _SliverAppBarDelegate(
                    TabBar(
                      controller: new TabController(length: 2, vsync: this),
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: "security"),
                        Tab( text: "cake"),
                      ],
                    ),
                  ))*/
          ];
        },
        body: Center(
          child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new ListItemWidget(listData[index]);
            },
            itemCount: listData.length,
          ),
        ),
      ),
    );
  }
}

class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      child: new ListTile(
        leading: new Icon(listItem.iconData),
        title: new Text(listItem.title),
      ),
      onTap: () {},
    );
  }
}
