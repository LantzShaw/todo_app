import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/cart_controller.dart';
import '../../widgets/my_card.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  static String routeName = '/cart';

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartController _controller = Get.put(CartController());
  final ScrollController _scrollViewController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // print('_controller: ${_controller}'); // 带下划线_的变量不要写成$${_controlller}
    print('_controller: $_controller');

    _scrollViewController.addListener(() {
      print('${_scrollViewController.position.userScrollDirection}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        elevation: 0.0,
        title: Text('Home', style: TextStyle(color: Colors.black)),
        // backgroundColor: Colors.white,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFd9f7be),
              Color(0xFFfffbe6),
              Color(0xFFFFFFFF),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
              padding: const EdgeInsets.all(0),
              sliver: SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                // SizedBox(height: 20.0),
                Obx(() => Text('${_controller.name}')),
                MyCard(
                    title: 'lesson_01',
                    content: 'Flutter crash course!',
                    description:
                        'Learn this course, you \'ll develope your own application alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_02',
                    content: 'React crash course!',
                    description:
                        'Learn this course, you \'ll develope your own web applications alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_03',
                    content: 'React Native crash course!',
                    description:
                        'Learn this course, you \'ll develope your own applications alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_01',
                    content: 'Flutter crash course!',
                    description:
                        'Learn this course, you \'ll develope your own application alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_02',
                    content: 'React crash course!',
                    description:
                        'Learn this course, you \'ll develope your own web applications alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_03',
                    content: 'React Native crash course!',
                    description:
                        'Learn this course, you \'ll develope your own applications alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_01',
                    content: 'Flutter crash course!',
                    description:
                        'Learn this course, you \'ll develope your own application alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_02',
                    content: 'React crash course!',
                    description:
                        'Learn this course, you \'ll develope your own web applications alone later.'),
                SizedBox(height: 20.0),
                MyCard(
                    title: 'lesson_03',
                    content: 'React Native crash course!',
                    description:
                        'Learn this course, you \'ll develope your own applications alone later.'),
              ])))
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _scrollViewController.dispose();
  }
}
