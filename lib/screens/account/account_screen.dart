import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key? key}) : super(key: key);

  static String routeName = '/account';

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.transparent,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          // title: Text('demo'),
          stretch: true, // 图片缩放
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'Lantz',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            // titlePadding: EdgeInsets.only(left: 10.0),
            centerTitle: false,
            collapseMode: CollapseMode.pin,
            background: Image.asset(
              'assets/images/Lantz.jpeg',
              fit: BoxFit.cover,
            ),
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
          iconTheme: IconThemeData(
            color: Colors.grey,
            size: 18.0,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
          elevation: 0.0,
          expandedHeight: 320.0,
          backgroundColor: Colors.white,
          floating: true,
          pinned: true, // appBar是否固定
          snap: false,
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('item $index')),
            childCount: 30,
          ),
          itemExtent: 50.0,
        )
      ]),
    );
  }
}
