import 'package:flutter/material.dart';

import '../screens/screens.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  // Item tapped
  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 0.0,
        // backgroundColor: Colors.white.withOpacity(0.0),
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green[500],
        selectedLabelStyle: TextStyle(fontSize: 12.0),
        unselectedLabelStyle: TextStyle(fontSize: 12.0),
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              // icon: Icon(Icons.home),
              icon: Icon(IconData(0xe7ae, fontFamily: 'IconFont')), // 自定义图标
              label: '首页',
              // backgroundColor: Colors.white
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_outlined),
              label: '社区',
              // backgroundColor: Colors.white
              ),
        
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '消息',
              // backgroundColor: Colors.white
              ),
                BottomNavigationBarItem(
              icon: Icon(Icons.wysiwyg_rounded),
              label: '动态',
              // backgroundColor: Colors.white
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '我的',
              // backgroundColor: Colors.white
              ),
        ],
      ),
    );
  }
}
