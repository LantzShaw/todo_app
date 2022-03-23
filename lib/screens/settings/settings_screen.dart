import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/widgets/custom_cell.dart';

import '../../widgets/opacity_banner.dart';
import '../../widgets/slide_banner.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  static String routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> _itemList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 246, 247, 248),
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.white,

              // Status bar brightness (optional)
              statusBarIconBrightness:
                  Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            title: Text('设置'),
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.grey, size: 18.0),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    <Widget>[
                      Column(
                        children: [
                          /// 水平滚动
                          // Container(
                          //   width: 300.0,
                          //   child: SingleChildScrollView(
                          //     scrollDirection: Axis.horizontal,
                          //     child: Row(
                          //       children: _itemList.map((item) {
                          //         return Container(
                          //           height: 100.0,
                          //           width: 100.0,
                          //           color: Colors.blue,
                          //           child: Text('$item'),
                          //         );
                          //       }).toList(),
                          //     ),
                          //   ),
                          // ),
                          CustomCell(
                            '我的账户',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '我的账户',
                              );
                            },
                          ),
                          CustomCell(
                            '密码修改',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '密码修改',
                              );
                            },
                          ),

                          SizedBox(height: 20.0),
                          CustomCell(
                            '打卡管理',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '打卡管理',
                              );
                            },
                          ),
                          CustomCell(
                            '会员中心',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '会员中心',
                              );
                            },
                          ),
                          CustomCell(
                            '学习设置',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '学习设置',
                              );
                            },
                          ),
                          CustomCell(
                            '个性化设置',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '个性化设置',
                              );
                            },
                          ),
                          SizedBox(height: 20.0),
                          CustomCell(
                            '通用设置',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '通用设置',
                              );
                            },
                          ),
                          CustomCell(
                            '个人隐私',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '我的账户',
                              );
                            },
                          ),
                          CustomCell(
                            '版本信息',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '我的账户',
                              );
                            },
                          ),
                          CustomCell(
                            '关于我们',
                            isShowBorder: true,
                            icon: Text(''),
                            onTapNavigator: () {
                              Navigator.pushNamed(
                                context,
                                '/detail',
                                arguments: '关于我们',
                              );
                            },
                          ),

                          SizedBox(height: 25.0),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signIn');
                              },
                              style: ButtonStyle(
                                // backgroundColor: Colors.red, /// 直接这么写会报错
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Color(0xFFff4d4f),
                                ),
                              ),
                              child: Text('退出登录'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
