import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  static String routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
            // title: Text('demo'),
            stretch: true, // 图片缩放
            flexibleSpace: FlexibleSpaceBar(
              title: Text('demo'),
              // titlePadding: EdgeInsets.only(left: 10.0),
              centerTitle: false,
              collapseMode: CollapseMode.pin,
              background:
                  Image.asset('assets/images/Lantz.jpeg', fit: BoxFit.cover),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                // StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
            actions: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    print('添加');
                  }),
              IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {
                    print('更多');
                  })
            ],
            expandedHeight: 320.0,
            backgroundColor: Colors.blue[200],
            floating: true,
            pinned: true, // appBar是否固定
            snap: false),
        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('item $index')),
                childCount: 30),
            itemExtent: 50.0)
      ]),
    );
  }
}
