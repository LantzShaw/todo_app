# 关于项目启动

```sh

 keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key   生成key(密钥)

flutter doctor

flutter doctor --android-licenses

flutter build apk --no-tree-shake-icons

flutter build apk --split-per-abi

flutter build appbundle(推荐)
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
