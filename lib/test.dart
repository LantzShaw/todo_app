import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text('flutter'),
              elevation: 0.0,
              backgroundColor: Colors.amber[700],
              actions: [
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: null,
                    color: Colors.white),
                IconButton(
                    icon: Icon(Icons.settings),
                    tooltip: 'Settings',
                    onPressed: null,
                    color: Colors.white),
              ],
            ),
            body: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.blue[700],
                  alignment: Alignment.center,
                  child: Text(
                    'center',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  height: 200.0,
                  width: double.infinity,
                  color: Colors.green[700],
                  alignment: Alignment.center,
                  child: Text(
                    'center',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0),
                  ),
                )
              ],
            )));
  }
}
