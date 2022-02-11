// import 'package:flutter/widgets.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
// import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
// import 'package:shop_app/screens/details/details_screen.dart';
// import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
// import 'package:shop_app/screens/home/home_screen.dart';
// import 'package:shop_app/screens/login_success/login_success_screen.dart';
// import 'package:shop_app/screens/otp/otp_screen.dart';
// import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
// import 'package:shop_app/screens/splash/splash_screen.dart';

// import 'screens/sign_up/sign_up_screen.dart';

// // We use name route
// // All our routes will be available here
// final Map<String, WidgetBuilder> routes = {
//   SplashScreen.routeName: (context) => SplashScreen(),
//   SignInScreen.routeName: (context) => SignInScreen(),
//   ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
//   LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
//   SignUpScreen.routeName: (context) => SignUpScreen(),
//   CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
//   OtpScreen.routeName: (context) => OtpScreen(),
//   HomeScreen.routeName: (context) => HomeScreen(),
//   DetailsScreen.routeName: (context) => DetailsScreen(),
//   CartScreen.routeName: (context) => CartScreen(),
//   ProfileScreen.routeName: (context) => ProfileScreen(),
// };

import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'screens/screens.dart';

// import 'screens/splash/splash_screen.dart';
// import 'screens/home/home_screen.dart';
// import 'screens/cart/cart_screen.dart';
// import 'screens/category/category_screen.dart';
// import 'screens/profile/profile_screen.dart';
// import 'screens/sign_in/sign_in_screen.dart';
// import 'screens/sign_up/sign_up_screen.dart';

// *************************************** Routes *************************************** //
// final Map<String, WidgetBuilder> routes = {
//   SplashScreen.routeName: (context) => SplashScreen(),
//   HomeScreen.routeName: (context) => HomeScreen(),
//   CategoryScreen.routeName: (context) => CategoryScreen(),
//   DetailScreen.routeName: (context) => DetailScreen(),
//   CartScreen.routeName: (context) => CartScreen(),
//   ProfileScreen.routeName: (context) => ProfileScreen(),
//   SignInScreen.routeName: (context) => SignInScreen(),
//   SignUpScreen.routeName: (context) => SignUpScreen(),
// };
// *************************************** Routes *************************************** //

// Function onGenerateRoute  (RouteSettings settings) {
//   final String name = settings.name;

//   print(name);
//   final Function pageContentBuilder = routes[name];

//   if (pageContentBuilder != null) {
//     if (settings.name != null) {
//       final Route route = MaterialPageRoute(
//           builder: (context) =>
//               pageContentBuilder(context, arguments: settings.arguments));

//       return route;
//     } else {
//       final Route route = MaterialPageRoute(
//           builder: (context) => pageContentBuilder(
//                 context,
//                 arguments: settings.arguments,
//               ));
//       return route;
//     }
//   }
// };

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final String? name = settings.name;

//     final Map<String, WidgetBuilder> routes = {
//       SplashScreen.routeName: (context) => SplashScreen(),
//       HomeScreen.routeName: (context) => HomeScreen(),
//       CategoryScreen.routeName: (context) => CategoryScreen(),
//       CartScreen.routeName: (context) => CartScreen(),
//       ProfileScreen.routeName: (context) => ProfileScreen(),
//       SignInScreen.routeName: (context) => SignInScreen(),
//       SignUpScreen.routeName: (context) => SignUpScreen(),
//     };

//     print(name);
//     final Function pageContentBuilder = routes[name];

//     if (pageContentBuilder != null) {
//       if (settings.name != null) {
//         final Route route = MaterialPageRoute(
//             builder: (context) =>
//                 pageContentBuilder(context, arguments: settings.arguments));

//         return route;
//       } else {
//         final Route route = MaterialPageRoute(
//             builder: (context) => pageContentBuilder(
//                   context,
//                   arguments: settings.arguments,
//                 ));
//         return route;
//       }
//     }
//   }
// }

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

        // final args = settings.arguments;

        // if(args is String) {
        //   return MaterialPageRoute(builder: (_) => NotificationScreen(data: args));
        // }

        var args = settings.arguments as String;
        // 路由传参
        return MaterialPageRoute(
            builder: (_) => NotificationScreen(data: args));

      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/signUp':
        print('settings $settings');

        // var data = settings.arguments as String;

        // print('$data');

        return MaterialPageRoute(builder: (_) => SignUpScreen());
      // default:
      //   return MaterialPageRoute(
      //       builder: (_) => Scaffold(
      //             body: Center(
      //                 child: Text('No route defined for ${settings.name}')),
      //           ));
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

// 参考文章: https://medium.com/flutter-community/clean-navigation-in-flutter-using-generated-routes-891bd6e000df