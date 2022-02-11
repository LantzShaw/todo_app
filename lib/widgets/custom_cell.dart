import 'package:flutter/material.dart';

class CustomCell extends StatelessWidget {
  final String title;
  final IconData imageName;

  const CustomCell({Key? key, required this.title, required this.imageName}) : super(key: key);

  // TODO: assert 怎么使用
  // : assert(title != null, 'title不能为空'),
  //  assert(imageName != null, 'imageName不能为空');  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.blue,
      ),
      height: 54.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(this.imageName),
          SizedBox(width: 15.0),
          Text(this.title),
          Spacer(),
          Icon(Icons.arrow_forward_ios_rounded)
        ]
      )
    );
  }
}