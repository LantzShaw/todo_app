import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo_app/bindings/cart_bindings.dart';
import 'package:todo_app/bindings/notification_bindings.dart';
import 'package:todo_app/screens/account/account_screen.dart';
import 'package:todo_app/screens/cart/cart_screen.dart';
import 'package:todo_app/screens/cart/detail_screen.dart';
import 'package:todo_app/screens/category/category_screen.dart';
import 'package:todo_app/screens/community/commnity_screen.dart';
import 'package:todo_app/screens/home/home_screen.dart';
import 'package:todo_app/screens/notification/notification_screen.dart';
import 'package:todo_app/screens/profile/profile_screen.dart';
import 'package:todo_app/screens/settings/settings_screen.dart';
import 'package:todo_app/screens/sign_in/sign_in_screen.dart';
import 'package:todo_app/screens/sign_up/sign_up_screen.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartScreen(),
      binding: CartBindings(),
    ),
    GetPage(
      name: Routes.CATEGORY,
      page: () => CategoryScreen(),
    ),
    GetPage(
      name: Routes.NOTIFICATION,
      page: () => NotificationScreen(),
      binding: NotificationBindings(),
    ),
    GetPage(
      name: Routes.COMMUNITY,
      page: () => CommunityScreen(),
    ),
    GetPage(
      name: Routes.PROFILE,
      page: () => ProfileScreen(),
      // binding:
      // middlewares: []
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingsScreen(),
      // binding:
      // middlewares: []
    ),
    GetPage(
      name: Routes.ACCOUNT,
      page: () => AccountScreen(),
      // binding:
      // middlewares: []
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(
        title: 'Detial',
        data: 'This message is from another screen!',
      ),
    ),
    GetPage(
      name: Routes.SIGN_IN,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => SignUpScreen(),
    ),
  ];
}
