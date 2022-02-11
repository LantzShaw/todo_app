import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static String routeName = '/signIn';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          // constraints: BoxConstraints(
          //   maxHeight: double.infinity,
          //   maxWidth: double.infinity,
          // ),
          width: double.infinity,
          // height: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
            child: TextField(
              controller: _controller,
              onSubmitted: null,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term'),
            ),
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
