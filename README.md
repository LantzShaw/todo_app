# todo_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

-   [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
-   [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Records

```bash
# flutter中 Unable to locate Android SDK. run this command to fix
flutter config --android-sdk $HOME/Library/Android/sdk

# sdkmanager --licenses
```

```bash
    # flutter可视化拖拽：  https://flutterstudio.app/

    late 声明变量
```

```bash
背景为白色的原因：

当BottomNavigationBar中的items数量小于等于3时，type为BottomNavigationBarType.fixed，大于3则为BottomNavigationBarType.shifting，所以我们只需在代码中重载type属性，大于3个的时候设置type值为BottomNavigationBarType.fixed即可
```

**生命周期**
初始化、 状态变化、 组件移除

```bash
  # 组件生命周期
  1. 构造函数

  2. initState # 插入渲染树时调用，只调用一次

  3. didChangeDependencies # state依赖的对象发生变化时调用

  4. didUpdateWidget  # 组件状态改变时候调用，可能会调用多次

  5. build  # 构建Widget时调用

  # 组件移除

  6. deactivate # 当移除渲染树的时候调用

  7. dispose # 组件即将销毁时调用

  # 应用生命周期

  1. resumed # 可见并能响应用户的输入
  2. inactive # 处在并不活动状态，无法处理用户响应
  3. paused # 不可见并不能响应用户的输入，但是在后台继续活动中

```

\_tabController = TabController(length: 2, vsync: this)； 报错， 要继承 with SingleTickerProviderStateMixin 动画用 不然 vsync: this 报错

## Questions

1. get_it

2. 状态管理 (getx provider bloc  Scoped_model flutter_redux ...)

3. 什么时候用 const, 什么时候用 final

4. 路由传参如何实现

5. 数据请求如何实现

6. 如何真机调试

7. 本地持久化存储

8. 生命周期

9. wrap

10. export 用法

11. Scaffold()可以嵌套 Scaffold()吗

12. 如何在 statefulWidget 中获取参数

13. 调用组件的时候，会加const，属于flutter优化的一种

14. mixins

15. StreamBuilder

16. flutter 清除应用缓存 (https://www.jianshu.com/p/4436caa3b5be)

17. flutter 打包aar

18. flutter  native(原生) 混合开发

19. fromJson  toJson

20. part

21. 真机运行 bundle ID 

22. bottom navigation bar 透明
```sh
  part 'data.g.dart';

  @JsonSerializable()
```

21. library

22. 

```sh
  dependencies:
  json_annotation: ^4.0.1

  dev_dependencies:
    json_serializable: ^4.1.3
    build_runner: ^2.0.
```
23. late 关键字
  
  - 显式声明一个非空的变量，但不初始化
  如下，_temperature如果不加late关键字，类实例化时此值是不确定的，无法通过静态检查，加上late关键字可以通过静态检查，但由此会带来运行时风险。

  - 延迟初始化变量
  这个作用看起来和第一点矛盾，实际上是同一个意思。看下面的例子，temperature变量看起来是在声明时就被初始化了，但因为late关键字的存在，如果temperature这个变量没有被使用的话，_readThermometer()这个函数不会被调用，temperature也就不会被初始化了。

  late String temp = _readThermometer() /// lazy initialized

24. 下拉刷新 上拉加载
 
 pull_to_refresh

```sh

自定义Icon
https://segmentfault.com/a/1190000019750283

```

# 尽量用 const 的理由
  # 参考文章: https://blog.csdn.net/haha223545/article/details/105494312/
#   当我们调用 setState() 后，Flutter 会调用 build 方法，并且 rebuild 其中的每一个组件，避免全部重新构建的方法就是用 const。
# 如果一个组件更新频繁（比如动画），用 const 后可以减少垃圾回收


# 它将防止小部件在其父部件重建时被重建，因为您已经知道它永远不会改变。因此，只需构建一次，就可以通过将它变成const来获得性能。

```
**eg:** 
```dart
  class _MyWidgetState extends State<MyWidget> {
 
  String title = "Title";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // 这个有变量所以不用const
      ),
      body: Column(
        children: <Widget>[
          const Text("Text 1"),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Another Text widget"),
          ),
          const Text("Text 3"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() => title = 'New Title');
        },
      ),
    );
  }
  }

// 当你点击 FloatingActionButton 调用 setState 后，所有 const 定义的组件都不会重新构建。
```

```sh
  # RaisedButton 已弃用

  # MaterialButton、RaisedButton(ElevatedButton取代)、FloatingActionButton、FlatButton(TextButton取代)、IconButton、ButtonBar、DropdownButton、OutlinedButton、ToggleButtons 
```



```dart

    class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  static String routeName = '/notification';

  final String title;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // 有状态组件 传值
    var title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('$data'),
      ),
    );
  }
}
```

```bash
    # command + .
```



```dart

  List<Widget> pages = List();

  @override
  void initState() { 
    super.initState();
    pages
      ..add(HomeScreen())
      ..add(HotScreen())
      ..add(EmailScreen())
      ..add(PersonScreen());
  }

  // ..add()是Dart语言的..语法，编程模式的建造者模式，简单来说就是返回调用者本身。这里pages数组后用了..add()，还会返回pages，然后就一直使用..语法，能一直向pages里增加widget元素，最后调用父类的initState()方法
```

```dart
  Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    // color: Colors.blue, // 设置了decoration后，不能再设置Container的color，可以在BoxDecoration里面设置
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),

```

```dart
   MaterialButton(
                onPressed: () => {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) => HomeScreen()
                  // ))

                  Navigator.pushNamed(context, '/detail',
                      arguments: 'This message is from Home Screen')

                  // Navigator.of(context).pushNamed('/home')
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(),))
                },
                child: Text('Click Me'),
              )
```

```dart
  MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
      primaryColor: Color(0xFF3533A4),
      accentColor: Color(0xFF346DFC),
  )
）

  Theme.of(context).primaryColor; 
  Theme.of(context).accentColor;

  ModalRoute.of(context).settings.arguments; 获取参数

  MediaQuery.of(context).padding.top 获取status bar 的高度

  ModalRoute.of(context).settings.arguments;
```

```dart

// json.encode(data); 转JSON字符串

// jsonDecode(data) 转JSON

// 把json字符串转model
// 先转json
// var json = jsonDecode(jsonStr);
// json转model
// var model = UserResModel.fromJson(json);
```

#### 三种请求方式
> 参考文章  
> https://www.jianshu.com/p/3080e0b81cf4
> https://www.jianshu.com/p/bd4c2dc5e97f

```dart
1. 原生

2. http库

3. dio库
```

## Expanded
> 参考文章:
> https://www.jianshu.com/p/bd3766cbab42

```sh
  # flex表示弹性系数，默认是1。它常常和Row或Column组合起来使用
```

## Positioned
```sh
#Positioned控件主要用来设置绝对布局，必须配合Stack控件来使用，

# Positioned控件 通过设置left和top属性可以设置控件的绝对位置

Stack(
  children: [
    Positioned(
      left: 10.0,
      top: 10.0,
      child: Text('hello')
    )
  ]
)
```

### 运行新项目
```sh
 # 1. flutter pub get | flutter packages get

 # 2. 还是报红，重启vscode

 ```

 ### TextField 
> https://blog.csdn.net/yuzhiqiang_1993/article/details/88204031


```sh
  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)
  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0)

  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),



   late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

```


```sh
    # 取消水波纹效果
    style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory, 
              ),
```


# GetX



```sh
  .obs 表示可被观察的


参考文章:
 https://www.kindacode.com/article/using-getx-get-for-state-management-in-flutter/
 https://github.com/Lekwacious/shopping_app-_getx/blob/main/lib/models/order.dart
 https://medium.com/mindful-engineering/lets-getx-in-flutter-4eaff2826ac7
 https://www.jianshu.com/p/fd78dab0bbc3

```

### GetX路由管理
```sh
  Get.to()
  Get.off()
  Get.offAll()

  Get.toNamed()
  Get.toOffNamed()
  Get.toOffAllNamed()

  Get.back()

  # 方式一:
  传参
  Get.to(CartScreen(), arguments: 'message');
  接参
  String Name = Get.arguments;

```

### Getx Controller
```sh
  Get.put()
  Get.lazyput()
  Get.asyncput()
```

```sh
  # print('_controller: ${_controller}'); // 带下划线_的变量不要写成$${_controlller}
  # print('_controller: $_controller');
```


```dart
  import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final double _height;
  final bool _showIcon;
  final IconData _icon;

  const HeaderWidget(this._height, this._showIcon, this._icon, {Key? key}) : super(key: key);

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState(_height, _showIcon, _icon);
}

class _HeaderWidgetState extends State<HeaderWidget> {
  double _height;
  bool _showIcon;
  IconData _icon;

  _HeaderWidgetState(this._height, this._showIcon, this._icon);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Container(
      child: Stack(
        children: [
          ClipPath(
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.4),
                      Theme.of(context).accentColor.withOpacity(0.7),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper: new ShapeClipper(
                [
                  Offset(width / 5, _height),
                  Offset(width / 10 * 5, _height - 60),
                  Offset(width / 5 * 4, _height + 20),
                  Offset(width, _height - 18)
                ]
            ),
          ),
          ClipPath(
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.4),
                      Theme.of(context).accentColor.withOpacity(0.4),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper: new ShapeClipper(
                [
                  Offset(width / 3, _height + 20),
                  Offset(width / 10 * 8, _height - 60),
                  Offset(width / 5 * 4, _height - 60),
                  Offset(width, _height - 20)
                ]
            ),
          ),
          ClipPath(
            child: Container(
              decoration: new BoxDecoration(
                gradient: new LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).accentColor,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp
                ),
              ),
            ),
            clipper: new ShapeClipper(
                [
                  Offset(width / 5, _height),
                  Offset(width / 2, _height - 40),
                  Offset(width / 5 * 4, _height - 80),
                  Offset(width, _height - 20)
                ]
            ),
          ),
          Visibility(
            visible: _showIcon,
            child: Container(
              height: _height - 40,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(
                    left: 5.0,
                    top: 20.0,
                    right: 5.0,
                    bottom: 20.0,
                  ),
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(20),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    border: Border.all(width: 5, color: Colors.white),
                  ),
                  child: Icon(
                    _icon,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class ShapeClipper extends CustomClipper<Path> {
  List<Offset> _offsets = [];
  ShapeClipper(this._offsets);
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height-20);

    // path.quadraticBezierTo(size.width/5, size.height, size.width/2, size.height-40);
    // path.quadraticBezierTo(size.width/5*4, size.height-80, size.width, size.height-20);

    path.quadraticBezierTo(_offsets[0].dx, _offsets[0].dy, _offsets[1].dx,_offsets[1].dy);
    path.quadraticBezierTo(_offsets[2].dx, _offsets[2].dy, _offsets[3].dx,_offsets[3].dy);

    // path.lineTo(size.width, size.height-20);
    path.lineTo(size.width, 0.0);
    path.close();


    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


```


```sh 
  TextFormField

  TextField

```

### 渐变按钮

```dart
  GestureDetector(
             onTap: () => {},
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.blue]
                )
              // Decorate here
            ),
            child: Center(
              // Enter content here
              child: Text('注 册', style: TextStyle(color: Colors.white))
            ),
          ),
          ),

```

## 项目参考

```sh
https://github.com/yuexunshi/flutter_demo

```


```sh
  Random().nextInt(10000).toString()

  Feature.
```


# Flutter倒计时定时器
```sh
https://www.jianshu.com/p/9f1511d74da5

```