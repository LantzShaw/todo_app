import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({
    Key? key,
    this.title = 'title',
    String data = '',
  }) : super(key: key);

  static String routeName = '/notification';

  final String title;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 6;
  // late TabController _tabController;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController =
        TabController(initialIndex: _selectedIndex, length: 9, vsync: this);

    //      _tabController?.addListener(() {
    // setState(() {
    //   _selectedIndex = _tabController;
    // });

    // ModalRoute.of(context).settings.arguments;

    // 有状态组件 传值
    // var title = widget.data;
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant NotificationScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  void _onTabItemTapped(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      initialIndex: _selectedIndex,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  'Product List',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                pinned: true,
                floating: true,
                elevation: 0.0,
                // backgroundColor: Colors.blue.withOpacity(0.9),
                backgroundColor: Colors.white,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  isScrollable: true,
                  onTap: _onTabItemTapped,
                  indicatorWeight: 6.0,
                  indicatorColor: Color(0XFF647BEF),
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  // unselectedLabelStyle: TextStyle(color: Colors.red),
                  // indicator: BoxDecoration(
                  //     borderRadius:
                  //         BorderRadius.circular(16.0), // Creates border
                  //     color: Colors.greenAccent[20]),
                  tabs: [
                    Tab(
                      child:
                          Text('Flutter', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child:
                          Text('React', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child: Text('Node', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child: Text('Vue', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child:
                          Text('Mongodb', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child: Text('Mongoose',
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child:
                          Text('Express', style: TextStyle(color: Colors.grey)),
                    ),
                    Tab(
                      child: Text(
                        'Koa',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Egg',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Icon(Icons.flutter_dash),
              Icon(Icons.flight_land),
              Icon(Icons.perm_camera_mic),
              Icon(Icons.follow_the_signs),
              Icon(Icons.follow_the_signs),
              Icon(Icons.follow_the_signs),
              Icon(Icons.follow_the_signs),
              Icon(Icons.follow_the_signs),
              Icon(Icons.follow_the_signs),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

    print('deactivate');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    // _tabController!.dispose();
    _tabController?.dispose();

    print('dispose');
  }
}
