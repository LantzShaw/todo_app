import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/global_service.dart';
import 'package:todo_app/routes.dart';
import 'package:todo_app/routes/app_pages.dart';
import 'package:todo_app/screens/community/commnity_screen.dart';
import 'package:todo_app/screens/settings/settings_screen.dart';
import 'package:todo_app/screens/sign_up/sign_up_screen.dart';
import 'package:todo_app/screens/sign_in/sign_in_screen.dart';
// import 'package:todo_app/widgets/custom_bottom_nav_bar.dart';
import 'package:get/get.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/widgets/custom_bottom_nav_bar.dart';

void main() {
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,

        ///这是设置状态栏的图标和字体的颜色
        ///Brightness.light  一般都是显示为白色
        ///Brightness.dark 一般都是显示为黑色
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(style);
  }

  // services
  // Get.put<GlobalService>(GlobalService());

  // runApp(MyApp());

  appInit();
}

appInit() async {
  WidgetsFlutterBinding.ensureInitialized();

  // services
  Get.put<GlobalService>(GlobalService());

  // run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get.put<GlobalService>(GlobalService());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: GlobalService.to.isDarkMode ? AppTheme.dark : AppTheme.light,
      // theme: ThemeData(
      //   // colorScheme: ColorScheme(
      //   //   primary: Colors.red,
      //   //   onPrimary: Colors.green,
      //   //   secondary: Colors.amber,
      //   //   onSecondary: Colors.orange,
      //   // ),
      //   // canvasColor: Colors.white.withOpacity(0.0),

      //   // colorScheme: Theme.of(context).colorScheme.copyWith(
      //   //       primary: Color(0xFF476CEE),
      //   //       // secondary will be the textColor, when the textTheme is set to accent
      //   //       secondary: Colors.white,
      //   //     ),

      //   // primaryColor: Colors.red,
      //   // buttonTheme: ButtonThemeData(
      //   //   buttonColor: Colors.red
      //   // ),
      //   scaffoldBackgroundColor: Colors.white,
      //   splashFactory: InkRipple.splashFactory,
      //   highlightColor: Colors.transparent,
      //   splashColor: Color(0x40CCCCCC).withOpacity(0), // 取消底部导航涟漪效果
      // ),
      home: CustomBottomNavBar(),
      // home: SignInScreen(),
      // routes: routes,
      // onGenerateRoute: RouteGenerator.generateRoute,
      getPages: AppPages.pages,
      // initialRoute: ProfileScreen.routeName,
    );
  }
}
