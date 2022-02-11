import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String message = Get.arguments;
    // print('message---------$message');

    // String name = Get.arguments['name'];
    // print('name---------$name');

    return Scaffold(
      appBar: AppBar(
        // title: Text('注册'),
        // titleTextStyle: TextStyle(color: Colors.black),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 136, 135, 135)), // 修改默认返回按钮颜色
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
      color: Colors.white,
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 100.0),
         Container(
           child:  Text(
            '用户注册',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 35.0
            ),
          ),
         ),
          SizedBox(height: 70.0),
          Container(
            child: TextField(
              // cursorColor: Colors.grey,
              decoration: InputDecoration(
              //  border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                filled: true,
                fillColor: Color(0xFFF2F2F2),
                hintText: '请输入邮箱',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          // SizedBox(height: 40.0),
          // Container(
          //   child: TextField(
          //     obscureText: true,
          //     // cursorColor: Colors.grey,
          //     decoration: InputDecoration(
          //       // border: InputBorder.none,
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
          //         borderRadius: BorderRadius.circular(10.0)
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //          borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
          //         borderRadius: BorderRadius.circular(10.0)
          //       ),
          //       filled: true,
          //       fillColor: Color(0xFFF2F2F2),
          //       hintText: '请输入密码',
          //       hintStyle: TextStyle(color: Colors.grey),
          //     )
          //   ),
          // ),
          SizedBox(height: 70.0),
          Container(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(onPressed: () => {}, child: Text('下一步', style: TextStyle(
              fontSize: 18.0
            ))),
          ),
          // Expanded(child: Container(height: 50.0)),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: <Widget>[
          //     Text('注册账户', style: TextStyle(color: Color.fromARGB(255, 122, 121, 121))),
          //     Text('手机号登录', style: TextStyle(color: Color.fromARGB(255, 122, 121, 121))),
          //     Text('找回密码', style: TextStyle(color: Color.fromARGB(255, 122, 121, 121))),
          //   ]
          // ),
          // SizedBox(height: 20.0),
        ]
      ),
    )
    );
  }
}