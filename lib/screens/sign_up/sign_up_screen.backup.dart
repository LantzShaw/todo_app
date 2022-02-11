import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static String routeName = '/signUp';

  // void _onButtonTapped(context) {
  //   Navigator.pushNamed(context, '/notification');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 64.0, left: 10.0, right: 15.0),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Text(
                'Litecase',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              Expanded(
                child: Container(), // 同行中占据剩余空间
              ),
              Icon(Icons.search, color: Colors.grey, size: 24),
              SizedBox(width: 15.0),
              Icon(Icons.menu, color: Colors.grey, size: 24)
            ]),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                // 设置参数
                Navigator.pushNamed(context, '/notification',
                    arguments: 'This is message is from other screens...');
              },
              child: Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }
}
