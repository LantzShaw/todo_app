import 'package:flutter/material.dart';

class CustomCell extends StatelessWidget {
  const CustomCell(this.title,
      {Key? key, this.icon, this.onTapNavigator, this.isShowBorder = false})
      : super(key: key);

  final String title;
  // final IconData imageName;
  final Widget? icon;

  final GestureTapCallback? onTapNavigator;

  final bool isShowBorder;

  // TODO: assert 怎么使用
  // : assert(title != null, 'title不能为空'),
  //  assert(imageName != null, 'imageName不能为空');

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        color: Colors.white,
        child: InkWell(
          // highlightColor: Colors.black,
          // focusColor: Colors.black,
          // hoverColor: Colors.black,
          splashColor: Color.fromARGB(31, 192, 190, 190),
          // splashFactory: NoSplash.splashFactory,
          onTap: onTapNavigator,
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              // border: Border.all(width: 1.0),
              /// 单条边设置
              border: Border(
                bottom: BorderSide(
                  width: isShowBorder ? 1.0 : 0.0,
                  color: Color.fromARGB(77, 207, 206, 206),
                ),
              ),
              // borderRadius: BorderRadius.circular(0.0), /// 设置了border与borderRadiu不能同时存在
              // color: Colors.white,
            ),
            height: 65.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                icon!,
                SizedBox(width: 15.0),
                Text(title),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 18.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
