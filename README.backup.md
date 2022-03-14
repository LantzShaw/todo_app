# 关于项目启动

```sh

 keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key   生成key(密钥)

flutter doctor

flutter doctor --android-licenses

Flutter 升级最新版本 使用 treeview 打包报错 This application cannot tree shake icons fonts. It has non-constant instances of IconData at the following locations

解决方法 ：
# 图标数据加载问题。 最新版本flutter sdk 存在的bug。打包时加上 --no-tree-shake-icons
1. 用命令 flutter build apk --no-tree-shake-icons 来打包，（不过这个方法不建议，因为以后都不能用菜单中的Build Apk来打包了。。。）
2. 在IconData之前加上const；
3. 直接换掉IconData中的图片（阿里妈妈网站的图片索引），用本地图片的加载方式去显示图片。

flutter build apk --no-tree-shake-icons

flutter build apk --split-per-abi

flutter build appbundle(推荐)
```

```sh
$ cd ios
$ open -a Xcode . # 在Xcode中打开当前的ios目录


$ export -p # 查看配置

```

**Flutter高版本安卓打包报错问题**

**/flutter/packages/flutter_tools/gradle/flutter.gradle line 904**

https://blog.csdn.net/java_xinxiu/article/details/113882116?spm=1001.2101.3001.6650.1&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1.pc_relevant_default&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-1.pc_relevant_default&utm_relevant_index=2

```sh
解决方法：
flutter build apk --no-tree-shake-icons

解析：
其实这个问题在1.20之后就有了，那时候只用把icondata前加const变为常量就好。在我升级至1.22.6之后，安卓打包再次出现问题，加上–no-tree-shake-icons之后可正常打包，具体原因不详，还望大神在评论区解答
```
混淆文件
https://www.jianshu.com/p/a086236e8c16

打包流程
https://www.jianshu.com/p/04eb531da438


【Flutter】2.0版本更新升级组件，运行Android提示compileSdkVersion不支持
https://www.jianshu.com/p/106050ae2d0a



### 关于在ios simulator的报错的问题
```sh
# 升级flutter，运行旧项目报错
https://blog.csdn.net/qq_33646395/article/details/108214371

# Flutter解决Could not build the application for the simulator的一种方式
https://www.jianshu.com/p/d8432dd3b800

# PCH was compiled with module cache......解决办法
PCH was compiled with module cache path '/Users/jingyuda/Library/Developer/Xcode/DerivedData/ModuleCache/1VMZ023LJM0DL', but the path is currently '/Users/JingYuda/Library/Developer/Xcode/DerivedData/ModuleCache/1VMZ023LJM0DL'
问题的解决：
1.Close your project or workspace.
2.In Finder: ⇧shift+⌘cmd+G
3.Paste: ~/Library/Developer/Xcode/DerivedData/
4.Delete the ModuleCache folder and empty trash.
5.Open up your project.
6.Clean: ⇧shift+⌘cmd+K
7.Build: ⌘cmd+B 

笔者用如下方法从根源解决了问题：

1、关闭Xcode，打开终端：

2、进入DerivedData目录

cd ~/Library/Developer/Xcode/DerivedData/

3、然后再终端执行：
xattr -rc .

4、再运行flutter项目，完美解决
```


### Record

**Avatar**
```dart
 // CircleAvatar(
              //   radius: 50.0,
              //   backgroundImage: AssetImage('assets/images/Lantz.jpeg'),
              // )
              ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
                  child: Image.asset('assets/images/Lantz.jpeg',
                      fit: BoxFit.cover))
              // ClipOval(
              //     child: Image.asset('assets/images/Lantz.jpeg',
              //         fit: BoxFit.cover))
```




### flutter doctor

```sh
$ cd /Users/Lantz/Library/Android/sdk

$ sdkmanager --install "cmdline-tools;latest"
$ sdkmanager--install "cmdline-tools;latest"
```

"Failed to install the following Android SDK packages as some licences have not been accepted" error
https://stackoverflow.com/questions/54273412/failed-to-install-the-following-android-sdk-packages-as-some-licences-have-not


Android Sdk Manager not found

```sh
flutter config --android-sdk D:\flutter\sdk_1

```
### 修改status bar

参考文章：
https://stackoverflow.com/questions/52489458/how-to-change-status-bar-color-in-flutter

第三方：
flutter_statusbarcolor_ns

**全局设置**
```sh
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());

  if(Platform.isAndroid){
    SystemUiOverlayStyle style = SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      ///这是设置状态栏的图标和字体的颜色 
      ///Brightness.light  一般都是显示为白色
      ///Brightness.dark 一般都是显示为黑色
      statusBarIconBrightness: Brightness.light
    );
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}
```


**单个页面设置**

```sh
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Text('Body');
  }
}
```

单个页面设置时未解决的问题：
设置AppBar之后，这行代码会失效SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

```sh
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
    );
  }
}
```

以前版本是设置
```sh
Scaffold(
    appBar: AppBar(brightness: Brightness.dark)
)
```

**这个方式可以设置没有appbar的情况中status的颜色**
```sh
AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold()
      ),
```
**有appbar的情况**
```sh
appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),

```

### 页面转场动画

参考文章：
https://blog.csdn.net/weixin_29227425/article/details/113043643

https://blog.csdn.net/shuzhuchengfu/article/details/101774864

```sh
Flutter 提供了两个转场动画，分别为 MaterialPageRoute 和 CupertinoPageRoute，MaterialPageRoute 根据不同的平台显示不同的效果，Android效果为从下到上，iOS效果为从左到右。CupertinoPageRoute 不分平台，都是从左到右。
```
```sh
main.js 中有一个

theme: ThemeData(
  briprimaryColorBrightness: Brightness.dark
)
```

设置border

```sh

decoration: BoxDecoration(
              border: Border.all(),
)
```