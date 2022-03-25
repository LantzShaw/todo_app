import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../widgets/custom_cell.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  static String routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // 无效
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //     statusBarColor: Colors.black,
    //     statusBarIconBrightness: Brightness.dark));

    // 无效
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.notifications),
            onPressed: () => null,
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.settings),
            // onPressed: () => Navigator.pushNamed(context, '/settings'),
            onPressed: () => Get.toNamed('/settings'),
          ),
          const SizedBox(width: 15.0)
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Column(
                    children: <Widget>[
                      Ink(
                        // color: Colors.black12,
                        child: InkWell(
                          splashColor: Color.fromARGB(31, 192, 190, 190),
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/account',
                              arguments: 'Lantz',
                            );
                          },
                          child: Container(
                            // color: Colors.green,
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            height: 80.0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // Image.asset('assets/images/Lantz.jpeg', fit: BoxFit.cover)
                                // CircleAvatar(
                                //   radius: 50.0,
                                //   backgroundImage: AssetImage('assets/images/Lantz.jpeg'),
                                // )
                                // ClipRRect(
                                //     borderRadius: BorderRadius.circular(10.0),
                                //     // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                //     // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
                                //     child: Image.asset('assets/images/Lantz.jpeg',
                                //         fit: BoxFit.cover))
                                ClipOval(
                                  child: Image.asset(
                                    'assets/images/Lantz.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 12.0),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        Text(
                                          'Lantz',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(width: 4.0),
                                        Chip(
                                          // padding: EdgeInsets.only(
                                          //   left: 10.0,
                                          //   right: 10.0,
                                          // ),
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          backgroundColor:
                                              Color.fromARGB(255, 245, 189, 70),
                                          labelPadding: EdgeInsets.only(
                                            left: 12.0,
                                            right: 12.0,
                                          ),
                                          label: Text(
                                            "SVIP",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4.0),
                                    Text(
                                      'Take a step at a time!',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 134, 133, 133),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.grey,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding:
                              const EdgeInsets.only(right: 20.0, left: 20.0),
                          alignment: Alignment.centerRight,
                          height: 100.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 241, 193, 104),
                                Color.fromARGB(255, 170, 117, 20)
                              ],
                            ),
                          ),
                          // color: Colors.grey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('开通VIP'),
                                  SizedBox(height: 4.0),
                                  Text(
                                    '享受更多权益',
                                    style: TextStyle(fontSize: 16.0),
                                  )
                                ],
                              ),
                              Text(
                                'VIP',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 95, 64, 7),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                            CustomCell(
                              '我的账户',
                              icon: Icon(Icons.account_box_rounded),
                              onTapNavigator: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: '我的账户',
                                );
                              },
                            ),
                            CustomCell(
                              '我的课程',
                              icon: Icon(Icons.countertops_rounded),
                              onTapNavigator: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: '我的课程',
                                );
                              },
                            ),
                            CustomCell(
                              '我的收藏',
                              icon: Icon(Icons.bookmark_rounded),
                              onTapNavigator: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: '我的收藏',
                                );
                              },
                            ),
                            CustomCell(
                              '我的图书',
                              icon: Icon(Icons.book_rounded),
                              onTapNavigator: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: '我的图书',
                                );
                              },
                            ),
                            CustomCell(
                              '帮助与反馈',
                              icon: Icon(Icons.feedback_rounded),
                              onTapNavigator: () {
                                Navigator.pushNamed(
                                  context,
                                  '/detail',
                                  arguments: '帮助与反馈',
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
