import 'package:flutter/material.dart';

import '../../widgets/my_card.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key? key}) : super(key: key);

  static String routeName = '/category';

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.all(10.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  SizedBox(height: 20.0),
                  MyCard(
                    content: 'Flutter',
                    description: 'This\'s a description...',
                    title: 'Flutter Course',
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
