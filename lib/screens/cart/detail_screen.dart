import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String data;

  // final String desc;

  // DetailScreen(this.desc, {Key? key, String? data, title}) : super(key: key);
  DetailScreen({Key? key, required this.data, required this.title})
      : super(key: key);

  static String routeName = '/detail';

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant DetailScreen oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: CustomScrollView(slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                Container(
                  height: 100.0,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue, // 设置了decoration后，不能再设置Container的color，可以在BoxDecoration里面设置
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue),
                ),
              ]),
            ),
          )
        ]));
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
