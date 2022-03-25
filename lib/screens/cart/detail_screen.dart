import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  var title = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    title = Get.arguments;

    print('Get.arguments ${Get.arguments}');
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
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Text(title),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.grey, size: 18.0),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
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
                    color: Color(0xFFffccc7),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                    color: Color(0xFFffe7ba),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFfff1b8),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFb5f5ec),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFefdbff),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFd6e4ff),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFffd6e7),
                  ),
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
