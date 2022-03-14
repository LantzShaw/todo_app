import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/account/account_screen.dart';
import 'package:todo_app/screens/settings/settings_screen.dart';
import 'screens/screens.dart';

// *************************************** Router List *************************************** //

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return CupertinoPageRoute(builder: (_) => HomeScreen());
      case '/category':
        return CupertinoPageRoute(builder: (_) => CategoryScreen());
      case '/cart':
        return CupertinoPageRoute(builder: (_) => CartScreen());
      case '/detail':
        print('${settings.arguments}');

        final args = settings.arguments;

        if (args is String) {
          return CupertinoPageRoute(
              builder: (_) => DetailScreen(data: args, title: args));
        }

        return _errorRoute();
      case '/notification':
        print('${settings.arguments}');

        var args = settings.arguments as String;

        return CupertinoPageRoute(
            builder: (_) => NotificationScreen(data: args));

      case '/profile':
        return CupertinoPageRoute(builder: (_) => ProfileScreen());
      case '/signUp':
        print('settings $settings');

        return CupertinoPageRoute(builder: (_) => SignUpScreen());
      case '/settings':
        return CupertinoPageRoute(builder: (_) => SettingsScreen());
      case '/account':
        return CupertinoPageRoute(builder: (_) => AccountScreen());
      case '/signIn':
        return CupertinoPageRoute(builder: (_) => SignInScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return CupertinoPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
              body: Text('Error'),
            ));
  }
}
