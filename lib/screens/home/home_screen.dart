// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   static String routeName = '/home';

//   @overrid
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   static const List<Widget> _screens = <Widget>[];

//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: _screens[_selectedIndex],
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _screens,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white70,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         selectedFontSize: 20.0,
//         unselectedFontSize: 16.0,
//         iconSize: 15.0,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//               backgroundColor: Color(0xFFFF4400)),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//               backgroundColor: Color(0xFF01AAED)),
//         ],
//       ),
//     );
//   }
// }

// ****************************** Custom Bottom Navigation Bar ****************************** //

// import 'dart:io';
// import 'dart:convert';

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/global_service.dart';
import 'package:todo_app/widgets/custom_cell.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController _name = TextEditingController();
  String _content = '';

  late AnimationController controller;
  late Animation<double> animation;
  late CurvedAnimation curve;
  bool isForward = false;

  List<Container> _buildGuidTitleList(int count) {
    return List<Container>.generate(
      count,
      (int index) => Container(
        color: Colors.blue,
        // height: 10.0,
        child: Text('hello'),
      ),
    );
  }

  void initState() {
    super.initState();

    getData();

    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller);
    animation.addListener(() {
      setState(() {});
    });

    this._name.text = 'container';
  }

  void getData() async {
    Dio dio = new Dio();

    final response = await dio
        .post("http://rap2api.taobao.org/app/mock/280952/api/v1/articleList");

    // print(response.data is Map);
    print(response.data);

//     HttpClient httpClient = new HttpClient();

//       Uri uri = Uri(scheme: "http", host: "rap2api.taobao.org/app/mock/280952/api/v1/articleList");

//       HttpClientRequest request = await httpClient.getUrl(uri);

//       request.headers.add("user-agent", "test");
// request.headers.add("Authorization", "LKSJDLFJSDLKJSLKklsdj");

// HttpClientResponse response = await request.close();

// if (response.statusCode == HttpStatus.ok) {
//       _content = await response.transform(Utf8Decoder()).join();

//       print('******responese****** $_content');

// }

// httpClient.close();
  }

  Widget buildGrid() {
    return GridView.extent(
      //次轴的宽度
      maxCrossAxisExtent: 80,
      //次轴的宽度
      // padding: EdgeInsets.all(12.0),
      //上下左右的内边距
      mainAxisSpacing: 2.0,
      //主轴元素间距
      crossAxisSpacing: 2.0,
      //次轴元素间距
      children: _buildGuidTitleList(9), //添加
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     // Status bar color
        //     statusBarColor: Colors.red,

        //     // Status bar brightness (optional)
        //     statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        //     statusBarBrightness: Brightness.light, // For iOS (dark icons)
        //   ),
        // ),
        // appBar: AppBar(
        //   elevation: 0.0,
        //   title: Text('Home', style: TextStyle(color: Colors.black)),
        //   // backgroundColor: Colors.white,
        //   centerTitle: true,
        //   flexibleSpace: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(colors: [
        //         Color(0xFFd9f7be),
        //         Color(0xFFfffbe6),
        //         Color(0xFFFFFFFF),
        //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        //     ),
        //   ),
        // ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: 10.0,
            left: 20.0,
            bottom: 10.0,
            right: 20.0,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFd9f7be),
                Color(0xFFfffbe6),
                Color(0xFFFFFFFF),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.01, 0.09, 1],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top),
              TextField(
                controller: this._name,
                decoration: InputDecoration(
                  hintText: 'Type your username',
                  // helperText: 'helele',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  // labelText: 'Name',
                  icon: Icon(Icons.person,
                      color: Theme.of(context).colorScheme.primary),
                ),
                onChanged: (value) {
                  print(value);

                  this.setState(() {
                    this._name.text = value;
                  });
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                obscureText: true, // 密码框
                decoration: InputDecoration(
                  hintText: 'Type your password',
                  // helperText: 'helele',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(color: Colors.green, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    ),
                  ),
                  // labelText: 'Name',
                  icon: Icon(
                    Icons.lock_outline,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.settings),
                  ),
                  // TextField(
                  //   decoration: InputDecoration(helperText: 'helele'),
                  // )
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  GlobalService.to.switchThemeMode();
                },
                child: const Text('Change The Theme'),
              ),

              // FadeTransition(opacity: animation, child: FlutterLogo(size: 100.0, textColor: Colors.black)),

              FlutterLogo(size: 50.0, style: FlutterLogoStyle.stacked),
              CustomCell('朋友圈', icon: Icon(Icons.verified_user_sharp)),
              ElevatedButton(
                onPressed: () async {
                  // print('${GetUtils.isEmail(this._name.text.toString())}');
                  if (GetUtils.isEmail(_name.text.toString())) {
                    print('true');

                    Get.snackbar("正确", "恭喜你, 完全正确",
                        backgroundColor: Colors.greenAccent);
                  } else {
                    Get.snackbar("邮箱错误", "请输入正确的邮箱",
                        backgroundColor: Colors.pink);

                    print('false');
                  }
                },
                child: Text('click me!'),
              ),
              MaterialButton(
                onPressed: () => {},
                child: Text('click me!'),
              ),
              Expanded(
                flex: 2,
                child: Text('Expanded Text'),
              ),
              Image.asset('assets/images/cloud.png', fit: BoxFit.cover),
              Expanded(
                flex: 3,
                child: Text('Expanded Text'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
