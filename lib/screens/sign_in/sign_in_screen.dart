import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 120.0),
            Container(
              child: Text(
                '欢迎登录',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 35.0),
              ),
            ),
            SizedBox(height: 70.0),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.0,
                      color: Color(0xFFF2F2F2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.0,
                      color: Color(0xFFF2F2F2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  hintText: '用户名/账号/邮箱',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            // Container(
            //   child: TextField(
            //     // cursorColor: Colors.grey,
            //     decoration: InputDecoration(
            //     //  border: InputBorder.none,
            //     enabledBorder: OutlineInputBorder(
            //         borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
            //         borderRadius: BorderRadius.circular(10.0)
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //          borderSide: BorderSide(width: 0.0, color: Color(0xFFF2F2F2)),
            //         borderRadius: BorderRadius.circular(10.0)
            //       ),
            //       filled: true,
            //       fillColor: Color(0xFFF2F2F2),
            //       hintText: '用户名/账号/邮箱',
            //       hintStyle: TextStyle(color: Colors.grey),
            //     ),
            //   ),
            // ),
            SizedBox(height: 40.0),
            Container(
              // TextFormField TextField
              child: TextFormField(
                obscureText: true,
                // cursorColor: Colors.grey,
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.0,
                      color: Color(0xFFF2F2F2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.0,
                      color: Color(0xFFF2F2F2),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF2F2F2),
                  hintText: '请输入密码',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 70.0),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () => {},
                clipBehavior: Clip.none,
                //   style: ElevatedButton.styleFrom(
                //   onPrimary: Colors.white,
                // ),
                // style: ButtonStyle(
                //   overlayColor: MaterialStateProperty.resolveWith(
                //     (states) {
                //       return states.contains(MaterialState.pressed)
                //           ? Colors.red
                //           : null;
                //     },
                //   ),
                // ),
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all<Color>(Colors.green,),
                //   shadowColor: MaterialStateProperty.all<Color>(Colors.white,),
                //   enableFeedback: false
                // ),
                // style: ButtonStyle(
                // overlayColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 90, 118, 216),),
                // backgroundColor: MaterialStateProperty.all<Color>(Colors.green,),
                // shadowColor: MaterialStateProperty.all<Color>(Color(0xFF476CEE),),
                // enableFeedback: false
                // ),
                style: ElevatedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    elevation: 0.0,
                    shadowColor: Colors.transparent),
                child: Text(
                  '登 录',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            // Container(
            //   child: TextButton(child: Text('注 册'), onPressed: () => {})
            // ),
            /// InkWell
            // Container(
            //   child: Ink(
            //     color: Colors.red,
            //     child: InkWell(
            //     splashColor: Colors.red,
            //     highlightColor: Colors.blue,
            //     hoverColor: Colors.green,
            //     child: Container(
            //       alignment: Alignment.center,
            //       height: 50.0,
            //       color: Colors.red,
            //       child: Text('注 册')
            //     ),
            //   ),
            //   )
            // ),

            /// OutlinedButton
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 50.0,
            //   // alignment: Alignment.center,
            //   child: OutlinedButton(child: Text('注 册', style: TextStyle(color: Colors.white,),), onPressed: () => {}, style: ButtonStyle(
            //       backgroundColor: MaterialStateProperty.all<Color>(Colors.green,),
            //   ))
            // ),

            /// ToggleButtons
            // Container(
            //   child: ToggleButtons(
            //     splashColor: Colors.transparent, // 取消水波纹
            //     isSelected: [true, false, false],
            //     selectedColor: Colors.white,
            //     fillColor: Colors.red,
            //     color: Colors.red,
            //     borderWidth: 0.0,
            //     onPressed: (index) {
            //       print(index);
            //     // setState(() {
            //     //   isSelected[index] = !isSelected[index];
            //   // });
            // },
            //     children: [
            //       Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Container(child: Text('BUTTON 1')),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Text('BUTTON 2'),
            //   ),
            //   Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 16.0),
            //     child: Text('BUTTON 3'),
            //   ),
            //   ],
            // )
            // ),
            Expanded(child: Container(height: 50.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: Text(
                    '注册账户',
                    style: TextStyle(
                      color: Color.fromARGB(255, 122, 121, 121),
                    ),
                  ),
                  onPressed: () => {
                    // Get.to(SignUpScreen(), arguments: 'infomation'),
                    // Get.toNamed('/signUp')
                    Get.toNamed('/signUp', arguments: {'name': 'Lantz'})
                    // Get.toNamed('/signUp?name=Lantz', arguments: 'hello')
                    // Get.offNamed('/signUp'),
                    // Get.offAllNamed('/signUp'),
                  },
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      '手机号登录',
                      style: TextStyle(
                        color: Color.fromARGB(255, 122, 121, 121),
                      ),
                    ),
                    onPressed: () => {Get.toNamed('/signUp')}),
                TextButton(
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      '找回密码',
                      style: TextStyle(
                        color: Color.fromARGB(255, 122, 121, 121),
                      ),
                    ),
                    onPressed: () => {Get.toNamed('/signUp')}),
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
