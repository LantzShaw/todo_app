import 'package:flutter/material.dart';
import 'package:todo_app/routes.dart';
import 'package:todo_app/screens/community/commnity_screen.dart';
import 'package:todo_app/screens/sign_up/sign_up_screen.dart';
import 'package:todo_app/screens/sign_in/sign_in_screen.dart';
// import 'package:todo_app/widgets/custom_bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:todo_app/widgets/custom_bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        // colorScheme: ColorScheme(
        //   primary: Colors.red,
        //   onPrimary: Colors.green,
        //   secondary: Colors.amber,
        //   onSecondary: Colors.orange,
        // ),
        // canvasColor: Colors.white.withOpacity(0.0),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Color(0xFF476CEE),
          // secondary will be the textColor, when the textTheme is set to accent
          secondary: Colors.white,
      ),
        // primaryColor: Colors.red,
        // buttonTheme: ButtonThemeData(
        //   buttonColor: Colors.red
        // ),
        scaffoldBackgroundColor: Colors.white,
        splashFactory: InkRipple.splashFactory,
        highlightColor: Colors.transparent,
        splashColor: Color(0x40CCCCCC).withOpacity(0), // 取消底部导航涟漪效果
      ),
      // home: CustomBottomNavBar(),
      home: CommunityScreen(),
      // routes: routes,
      onGenerateRoute: RouteGenerator.generateRoute,
      // initialRoute: ProfileScreen.routeName,
    );
  }
}
