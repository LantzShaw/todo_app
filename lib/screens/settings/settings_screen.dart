import 'package:flutter/material.dart';

import '../../widgets/opacity_banner.dart';
import '../../widgets/slide_banner.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> _itemList = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          appBar: AppBar(title: Text('scroll')), body: OpacityBanner()
          // body: Container(
          //   width: 300.0,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: _itemList.map((item) {
          //         return Container(
          //           height: 100.0,
          //           width: 100.0,
          //           color: Colors.blue,
          //           child: Text('$item')
          //         );
          //       }).toList()
          //       )
          //   )
          // ),
          );
    });
  }
}
