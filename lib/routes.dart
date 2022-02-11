import 'package:flutter/material.dart';
import 'screens/screens.dart';

// *************************************** Router List *************************************** //

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/category':
        return MaterialPageRoute(builder: (_) => CategoryScreen());
      case '/cart':
        return MaterialPageRoute(builder: (_) => CartScreen());
      case '/detail':
        print('${settings.arguments}');

        final args = settings.arguments;

        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => DetailScreen(data: args, title: 'helo'));
        }

        return _errorRoute();
      case '/notification':
        print('${settings.arguments}');

        var args = settings.arguments as String;

        return MaterialPageRoute(
            builder: (_) => NotificationScreen(data: args));

      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/signUp':
        print('settings $settings');

        return MaterialPageRoute(builder: (_) => SignUpScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error'),
              ),
              body: Text('Error'),
            ));
  }
}
