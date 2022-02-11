import 'package:flutter/material.dart';
import 'package:todo_app/screens/sign_in/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () => print('menu')),
        title: Text('Home',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              }),
        ],
      ),
      body: Column(children: <Widget>[
        Container(
            width: double.infinity,
            height: 100.0,
            // color: Colors.red[400],
            child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [Colors.blue, Colors.green]),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Center(
                  child: Text('This is a paragraph!',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto-LightItalic')),
                )))
      ]),
    );
  }
}
